Add-Type -Path 'Newtonsoft.Json.dll'
Add-Type -Path 'Octopus.Client.dll' 

Write-Host "######################################"
Write-Host "Configure server tentacle"
Write-Host "######################################"

$octopusApiKey = 'API-ISUO3MDTAYZUQRAPW1NN46RKJOU'
$octopusURI = 'http://internalapp1:8080'

$endpoint = new-object Octopus.Client.OctopusServerEndpoint $octopusURI, $octopusApiKey
$repository = new-object Octopus.Client.OctopusRepository $endpoint

$machine = $repository.Machines.FindByName("UI Test");

$repository.Machines.Delete($machine);