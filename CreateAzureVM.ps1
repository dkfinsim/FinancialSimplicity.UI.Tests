param([Parameter(Mandatory=$true)]$version)

cd $PSScriptRoot.Substring(0, 2)
cd $PSScriptRoot

$ErrorActionPreference = "Stop"
$resourceGroup = "ui_testing_resources"
$location = "australiaeast"
$vmName = "uitestvm"

Write-Host "######################################"
Write-Host "Create user object"
Write-Host "######################################"
$secpasswd = ConvertTo-SecureString "nhV9y2JT" -AsPlainText -Force
$cred = New-Object System.Management.Automation.PSCredential ("uitest", $secpasswd)

Import-Module AzureRM -Version 4.0.0
Import-Module AzureRM.profile -Version 3.0.1

$authCtx = Import-AzureRmContext -Path $env:UserProfile\AzureAuth.json
############ work around for auth bug in azure powershell scripts
$authCtx.Context.TokenCache.Deserialize($authCtx.Context.TokenCache.CacheData)
############

Write-Host "######################################"
Write-Host "Create a resource group"
Write-Host "######################################"
New-AzureRmResourceGroup -Name $resourceGroup -Location $location

Write-Host "######################################"
Write-Host "Configure storage account"
Write-Host "######################################"
New-AzureRmStorageAccount -ResourceGroupName $resourceGroup -AccountName "uiteststorageaccount" -Location $location -Type "Standard_LRS"
$Keys = Get-AzureRmStorageAccountKey -ResourceGroupName $resourceGroup -Name "uiteststorageaccount";
$StorageContext = New-AzureStorageContext -StorageAccountName "uiteststorageaccount" -StorageAccountKey $Keys[0].Value;
New-AzureStorageContainer -Context $StorageContext -Name uploads;
$UploadFile = @{
    Context = $StorageContext;
    Container = 'uploads';
    File = ".\ServerConfig.ps1";
}
Write-Host "######################################"
Write-Host "Upload files"
Write-Host "######################################"
Set-AzureStorageBlobContent @UploadFile;

Write-Host "######################################"
Write-Host "Create a subnet configuration"
Write-Host "######################################"
$subnetConfig = New-AzureRmVirtualNetworkSubnetConfig -Name "uiTestVirtualNetworkSubnet" -AddressPrefix 192.168.1.0/24

Write-Host "######################################"
Write-Host "Create a virtual network"
Write-Host "######################################"
$vnet = New-AzureRmVirtualNetwork -ResourceGroupName $resourceGroup -Location $location -Name "uiTestVirtualNetwork" -AddressPrefix 192.168.0.0/16 -Subnet $subnetConfig

Write-Host "######################################"
Write-Host "Create a public IP address and specify a DNS name"
Write-Host "######################################"
$pip = New-AzureRmPublicIpAddress -ResourceGroupName $resourceGroup -Location $location -Name "uitestpublicip$(Get-Random)" -AllocationMethod Static -IdleTimeoutInMinutes 4 -DomainNameLabel $vmName

Write-Host "######################################"
Write-Host "Create an inbound network security group rule for port 3389 (RDP)"
Write-Host "######################################"
$nsgRuleRDP = New-AzureRmNetworkSecurityRuleConfig -Name "uiTestNetworkSecurityGroupRuleRDP"  -Protocol Tcp `
  -Direction Inbound -Priority 1000 -SourceAddressPrefix * -SourcePortRange * -DestinationAddressPrefix * `
  -DestinationPortRange 3389 -Access Allow

Write-Host "######################################"
Write-Host "Create an inbound network security group rule for port 5986 Powershell"
Write-Host "######################################"
$nsgRulePS = New-AzureRmNetworkSecurityRuleConfig -Name "uiTestNetworkSecurityGroupRulePS"  -Protocol Tcp `
  -Direction Inbound -Priority 900 -SourceAddressPrefix * -SourcePortRange * -DestinationAddressPrefix * `
  -DestinationPortRange 5985 -Access Allow

Write-Host "######################################"
Write-Host "Create an inbound network security group rule for http"
Write-Host "######################################"
$nsgRuleHTTP = New-AzureRmNetworkSecurityRuleConfig -Name "uiTestNetworkSecurityGroupRuleHTTP"  -Protocol Tcp `
  -Direction Inbound -Priority 800 -SourceAddressPrefix * -SourcePortRange * -DestinationAddressPrefix * `
  -DestinationPortRange 80 -Access Allow

Write-Host "######################################"
Write-Host "Create an inbound network security group rule for octopus deploy"
Write-Host "######################################"
$nsgRuleOctopus = New-AzureRmNetworkSecurityRuleConfig -Name "uiTestNetworkSecurityGroupRuleOctopus"  -Protocol Tcp `
  -Direction Inbound -Priority 700 -SourceAddressPrefix * -SourcePortRange * -DestinationAddressPrefix * `
  -DestinationPortRange 10933 -Access Allow

Write-Host "######################################"
Write-Host "Create an inbound network security group rule for sql server"
Write-Host "######################################"
$nsgRuleSqlServer = New-AzureRmNetworkSecurityRuleConfig -Name "uiTestNetworkSecurityGroupRuleSqlServer"  -Protocol Tcp `
  -Direction Inbound -Priority 600 -SourceAddressPrefix * -SourcePortRange * -DestinationAddressPrefix * `
  -DestinationPortRange 1433 -Access Allow

Write-Host "######################################"
Write-Host "Create a network security group"
Write-Host "######################################"
$nsg = New-AzureRmNetworkSecurityGroup -ResourceGroupName $resourceGroup -Location $location -Name "uiTestSecurityGroup" -SecurityRules $nsgRuleRDP,$nsgRulePS,$nsgRuleHTTP,$nsgRuleOctopus,$nsgRuleSqlServer

Write-Host "######################################"
Write-Host "Create a virtual network card and associate with public IP address and NSG"
Write-Host "######################################"
$nic = New-AzureRmNetworkInterface -Name "uiTestNIC" -ResourceGroupName $resourceGroup -Location $location -SubnetId $vnet.Subnets[0].Id -PublicIpAddressId $pip.Id -NetworkSecurityGroupId $nsg.Id

Write-Host "######################################"
Write-Host "Create a virtual machine configuration"
Write-Host "######################################"
$vmConfig = New-AzureRmVMConfig -VMName $vmName -VMSize Standard_F4 | `
Set-AzureRmVMOperatingSystem -Windows -ComputerName $vmName -Credential $cred | `
Set-AzureRmVMSourceImage -PublisherName MicrosoftSQLServer -Offer SQL2016SP1-WS2016 -Skus Standard -Version latest | `
Add-AzureRmVMNetworkInterface -Id $nic.Id

Write-Host "######################################"
Write-Host "Create a virtual machine"
Write-Host "######################################"
New-AzureRmVM -ResourceGroupName $resourceGroup -Location $location -VM $vmConfig

Write-Host "######################################"
Write-Host "Running server configuration script"
Write-Host "######################################"
# Server config script installs some default plugins and opens permissions to allow further remote configuration
Set-AzureRmVMCustomScriptExtension -ResourceGroupName $resourceGroup -Location $location -VMName $vmName -Name "UITestConfig" -TypeHandlerVersion "1.1" -StorageAccountName "uiteststorageaccount" -StorageAccountKey $Keys[0].Value -FileName "ServerConfig.ps1" -ContainerName "uploads"

Write-Host "######################################"
Write-Host "Upload tools to server"
Write-Host "######################################"
$sess = New-PSSession -ComputerName "$vmName.$location.cloudapp.azure.com" -Credential $cred
Copy-Item -Path psexec.exe -Destination D:\ -ToSession $sess

Write-Host "######################################"
Write-Host "Configure server tentacle"
Write-Host "######################################"
Invoke-Command -ComputerName "$vmName.$location.cloudapp.azure.com" -Credential $cred tentacle-config.ps1

Write-Host "######################################"
Write-Host "Upload sql scripts to server"
Write-Host "######################################"
Copy-Item -Path DbCreationScripts\CreateAuthDatabaseWithData.sql -Destination D:\ -ToSession $sess
Copy-Item -Path DbCreationScripts\schema.sql -Destination D:\ -ToSession $sess
Copy-Item -Path DbCreationScripts\historySchema.sql -Destination D:\ -ToSession $sess
Copy-Item -Path DbCreationScripts\CreateDefaultData.sql -Destination D:\ -ToSession $sess

& src\LicenseGen\bin\Debug\net451\LicenseGen.exe c:\ima\RebalancingAPI\masterkey.mkey .\artifacts\financialsimplicity.rebalancingapi.license
Write-Host "######################################"
Write-Host "Upload application license file"
Write-Host "######################################"
Copy-Item -Path artifacts\financialsimplicity.rebalancingapi.license -Destination c:\users\uitest\financialsimplicity.rebalancingapi.license -ToSession $sess

Write-Host "######################################"
Write-Host "Running application configuration script"
Write-Host "######################################"
Invoke-Command -ComputerName "$vmName.$location.cloudapp.azure.com" -Credential $cred ApplicationConfig.ps1

Write-Host "######################################"
Write-Host "Get tentacle thumbprint"
Write-Host "######################################"
Invoke-Command -ComputerName "$vmName.$location.cloudapp.azure.com" -Credential $cred server-scripts\get-server-tentacle-thumbprint.ps1

Copy-Item -Path D:\tentacle-thumbprint.txt -Destination artifacts\tentacle-thumbprint.txt -FromSession $sess
$thumbprint = get-content artifacts\tentacle-thumbprint.txt | select -First 1 -Skip 1 | % { $_.Split(' ')[-1] }

.\server-scripts\add-tentacle-to-octopus.ps1 -vmName $vmName -location $location -thumbprint $thumbprint

.\server-scripts\start-deployment.ps1 -version $version

& .\build.cmd azure

Remove-AzureRmResourceGroup -Name $resourceGroup -Force

.\server-scripts\remove-tentacle-from-octopus.ps1
