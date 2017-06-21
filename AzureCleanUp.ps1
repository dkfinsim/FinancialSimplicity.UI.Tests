Import-Module AzureRM -Version 4.0.0
Import-Module AzureRM.profile -Version 3.0.1

$authCtx = Import-AzureRmContext -Path $env:UserProfile\AzureAuth.json
############ work around for auth bug in azure powershell scripts
$authCtx.Context.TokenCache.Deserialize($authCtx.Context.TokenCache.CacheData)
############

$resourceGroup = "ui_testing_resources"

Remove-AzureRmResourceGroup -Name $resourceGroup -Force

.\server-scripts\remove-tentacle-from-octopus.ps1
