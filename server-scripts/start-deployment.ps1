Add-Type -Path 'Octopus.Client.dll' 

$octopusApiKey = 'API-ISUO3MDTAYZUQRAPW1NN46RKJOU'
$octopusURI = 'http://internalapp1:8080'

$endpoint = New-Object Octopus.Client.OctopusServerEndpoint $octopusURI,$octopusApiKey 
$repository = New-Object Octopus.Client.OctopusRepository $endpoint

Write-host "######################################"
write-host "get environment"
write-host "######################################"
$environment = $repository.environments.findbyname("ui-test");
write-host "######################################"
write-host "get project"
write-host "######################################"
$ontargetproject = $repository.projects.findbyname("ontarget");
write-host "######################################"
write-host "get release"
write-host "######################################"
$release = $repository.projects.getreleasebyversion($ontargetproject, "17.2.21.22");
$deployment = new-object octopus.client.model.deploymentresource
$deployment.releaseid = $release.id
$deployment.projectid = $ontargetproject.id
$deployment.environmentid = $environment.id

$createdDeployment = $repository.deployments.create($deployment)

Start-Sleep -Seconds 10

$serverTask = $repository.Tasks.Get($createdDeployment.TaskId)
write-host "######################################"
write-host "Checking release status"
write-host "######################################"
while($serverTask.State -eq 1 -Or $serverTask.State -eq 2) {
    Write-Host -NoNewline "."
    Start-Sleep -Seconds 1
    $serverTask = $repository.Tasks.Get($createdDeployment.TaskId)
}
Write-Host ""
write-host "######################################"
write-host "Deployment completed with status: $($serverTask.State)";
write-host "######################################"
if ($serverTask.State -eq 6) {
    exit 0;
} else {
    exit -1;
}
