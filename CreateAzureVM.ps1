$ErrorActionPreference = "Stop"
# Variables for common values
$resourceGroup = "ui_testing_resources1"
$location = "australiaeast"
$vmName = "uitestvm"

# Create user object
$cred = Get-Credential -Message "Enter a username and password for the virtual machine."

# Create a resource group
New-AzureRmResourceGroup -Name $resourceGroup -Location $location

# Create a subnet configuration
$subnetConfig = New-AzureRmVirtualNetworkSubnetConfig -Name "uiTestVirtualNetworkSubnet" -AddressPrefix 192.168.1.0/24

# Create a virtual network
$vnet = New-AzureRmVirtualNetwork -ResourceGroupName $resourceGroup -Location $location `
  -Name "uiTestVirtualNetwork" -AddressPrefix 192.168.0.0/16 -Subnet $subnetConfig

# Create a public IP address and specify a DNS name
$pip = New-AzureRmPublicIpAddress -ResourceGroupName $resourceGroup -Location $location `
  -Name "uitestpublicip$(Get-Random)" -AllocationMethod Static -IdleTimeoutInMinutes 4

# Create an inbound network security group rule for port 3389
$nsgRuleRDP = New-AzureRmNetworkSecurityRuleConfig -Name "uiTestNetworkSecurityGroupRuleRDP"  -Protocol Tcp `
  -Direction Inbound -Priority 1000 -SourceAddressPrefix * -SourcePortRange * -DestinationAddressPrefix * `
  -DestinationPortRange 3389 -Access Allow
$nsgRulePS = New-AzureRmNetworkSecurityRuleConfig -Name "uiTestNetworkSecurityGroupRulePS"  -Protocol Tcp `
  -Direction Inbound -Priority 900 -SourceAddressPrefix * -SourcePortRange * -DestinationAddressPrefix * `
  -DestinationPortRange 5986 -Access Allow

# Create a network security group
$nsg = New-AzureRmNetworkSecurityGroup -ResourceGroupName $resourceGroup -Location $location -Name "uiTestSecurityGroup" -SecurityRules $nsgRuleRDP,$nsgRulePS

# Create a virtual network card and associate with public IP address and NSG
$nic = New-AzureRmNetworkInterface -Name "uiTestNIC" -ResourceGroupName $resourceGroup -Location $location -SubnetId $vnet.Subnets[0].Id -PublicIpAddressId $pip.Id -NetworkSecurityGroupId $nsg.Id

# Create a virtual machine configuration
$vmConfig = New-AzureRmVMConfig -VMName $vmName -VMSize Standard_F4 | `
Set-AzureRmVMOperatingSystem -Windows -ComputerName $vmName -Credential $cred | `
Set-AzureRmVMSourceImage -PublisherName MicrosoftWindowsServer -Offer WindowsServer -Skus 2016-Datacenter -Version latest | `
Add-AzureRmVMNetworkInterface -Id $nic.Id

# Create a virtual machine
New-AzureRmVM -ResourceGroupName $resourceGroup -Location $location -VM $vmConfig

# Install IIS
$PublicSettings = '{"commandToExecute":"powershell Add-WindowsFeature Web-Server"}'

Set-AzureRmVMExtension -ExtensionName "IIS" -ResourceGroupName $resourceGroup -VMName $vmName `
  -Publisher "Microsoft.Compute" -ExtensionType "CustomScriptExtension" -TypeHandlerVersion 1.4 `
  -SettingString $PublicSettings -Location $location

$PublicSettings = '{"commandToExecute":"powershell Enable-PSRemoting"}'

Set-AzureRmVMExtension -ExtensionName "IIS" -ResourceGroupName $resourceGroup -VMName $vmName `
  -Publisher "Microsoft.Compute" -ExtensionType "CustomScriptExtension" -TypeHandlerVersion 1.4 `
  -SettingString $PublicSettings -Location $location

$PublicSettings = '{"commandToExecute":"powershell Set-NetFirewallRule -Name "WINRM-HTTP-In-TCP-PUBLIC" -RemoteAddress Any"}'

Set-AzureRmVMExtension -ExtensionName "IIS" -ResourceGroupName $resourceGroup -VMName $vmName `
  -Publisher "Microsoft.Compute" -ExtensionType "CustomScriptExtension" -TypeHandlerVersion 1.4 `
  -SettingString $PublicSettings -Location $location

$sess = New-PSSession -ComputerName "$vmName.$location.cloudapp.azure.com" -Port 5986 -Credential $cred
Copy-Item -Path C:\Temp\OnTarget.17.2.19.10.nupkg -Destination D:\ -ToSession $sess
Copy-Item -Path C:\Temp\OnTarget.Database.17.2.19.10.nupkg -Destination D:\ -ToSession $sess
