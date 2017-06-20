Remove-AzureRmResourceGroup -Name $resourceGroup -Force

.\server-scripts\remove-tentacle-from-octopus.ps1
