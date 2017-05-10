$ErrorActionPreference = "Stop"
# Variables for common values
$resourceGroup = "ui_testing_resources"
$location = "australiaeast"
$vmName = "uitestvm"

Write-Host "Create user object"
$secpasswd = ConvertTo-SecureString "nhV9y2JT" -AsPlainText -Force
$cred = New-Object System.Management.Automation.PSCredential ("uitest", $secpasswd)

Write-Host "Create a resource group"
New-AzureRmResourceGroup -Name $resourceGroup -Location $location

Write-Host "Configure storage account"
New-AzureRmStorageAccount -ResourceGroupName $resourceGroup -AccountName "uiteststorageaccount" -Location $location -Type "Standard_LRS"
$Keys = Get-AzureRmStorageAccountKey -ResourceGroupName $resourceGroup -Name "uiteststorageaccount";
$StorageContext = New-AzureStorageContext -StorageAccountName "uiteststorageaccount" -StorageAccountKey $Keys[0].Value;
New-AzureStorageContainer -Context $StorageContext -Name uploads;
$UploadFile = @{
    Context = $StorageContext;
    Container = 'uploads';
    File = ".\ServerConfig.ps1";
}
Write-Host "Upload file"
Set-AzureStorageBlobContent @UploadFile;

Write-Host "Create a subnet configuration"
$subnetConfig = New-AzureRmVirtualNetworkSubnetConfig -Name "uiTestVirtualNetworkSubnet" -AddressPrefix 192.168.1.0/24

Write-Host "Create a virtual network"
$vnet = New-AzureRmVirtualNetwork -ResourceGroupName $resourceGroup -Location $location `
  -Name "uiTestVirtualNetwork" -AddressPrefix 192.168.0.0/16 -Subnet $subnetConfig

Write-Host "Create a public IP address and specify a DNS name"
$pip = New-AzureRmPublicIpAddress -ResourceGroupName $resourceGroup -Location $location `
  -Name "uitestpublicip$(Get-Random)" -AllocationMethod Static -IdleTimeoutInMinutes 4 -DomainNameLabel $vmName

Write-Host "Create an inbound network security group rule for port 3389 (RDP)"
$nsgRuleRDP = New-AzureRmNetworkSecurityRuleConfig -Name "uiTestNetworkSecurityGroupRuleRDP"  -Protocol Tcp `
  -Direction Inbound -Priority 1000 -SourceAddressPrefix * -SourcePortRange * -DestinationAddressPrefix * `
  -DestinationPortRange 3389 -Access Allow
Write-Host "Create an inbound network security group rule for port 5986 Powershell"
$nsgRulePS = New-AzureRmNetworkSecurityRuleConfig -Name "uiTestNetworkSecurityGroupRulePS"  -Protocol Tcp `
  -Direction Inbound -Priority 900 -SourceAddressPrefix * -SourcePortRange * -DestinationAddressPrefix * `
  -DestinationPortRange 5985 -Access Allow
Write-Host "Create an inbound network security group rule for http"
$nsgRuleHTTP = New-AzureRmNetworkSecurityRuleConfig -Name "uiTestNetworkSecurityGroupRuleHTTP"  -Protocol Tcp `
  -Direction Inbound -Priority 800 -SourceAddressPrefix * -SourcePortRange * -DestinationAddressPrefix * `
  -DestinationPortRange 80 -Access Allow

Write-Host "Create a network security group"
$nsg = New-AzureRmNetworkSecurityGroup -ResourceGroupName $resourceGroup -Location $location -Name "uiTestSecurityGroup" -SecurityRules $nsgRuleRDP,$nsgRulePS,$nsgRuleHTTP

Write-Host "Create a virtual network card and associate with public IP address and NSG"
$nic = New-AzureRmNetworkInterface -Name "uiTestNIC" -ResourceGroupName $resourceGroup -Location $location -SubnetId $vnet.Subnets[0].Id -PublicIpAddressId $pip.Id -NetworkSecurityGroupId $nsg.Id

Write-Host "Create a virtual machine configuration"
$vmConfig = New-AzureRmVMConfig -VMName $vmName -VMSize Standard_F4 | `
Set-AzureRmVMOperatingSystem -Windows -ComputerName $vmName -Credential $cred | `
Set-AzureRmVMSourceImage -PublisherName MicrosoftSQLServer -Offer SQL2016SP1-WS2016 -Skus Standard -Version latest | `
Add-AzureRmVMNetworkInterface -Id $nic.Id

Write-Host "Create a virtual machine"
New-AzureRmVM -ResourceGroupName $resourceGroup -Location $location -VM $vmConfig

Write-Host "Running server configuration script"
Set-AzureRmVMCustomScriptExtension -ResourceGroupName $resourceGroup -Location $location -VMName $vmName -Name "UITestConfig" -TypeHandlerVersion "1.1" -StorageAccountName "uiteststorageaccount" -StorageAccountKey $Keys[0].Value -FileName "ServerConfig.ps1" -ContainerName "uploads"

Write-Host "Upload deployment packages to server"
$sess = New-PSSession -ComputerName "$vmName.$location.cloudapp.azure.com" -Credential $cred
Copy-Item -Path C:\Temp\OnTarget.17.2.19.10.nupkg -Destination D:\ -ToSession $sess
Copy-Item -Path C:\Temp\OnTarget.Database.17.2.19.10.nupkg -Destination D:\ -ToSession $sess
