$ErrorActionPreference= 'silentlycontinue'
$tentacleExe = 'c:\program files\Octopus Deploy\Tentacle\Tentacle.exe'

& $tentacleExe create-instance --instance "Tentacle" --config "C:\Octopus\Tentacle.config" --console
Write-Host "######################################"
Write-Host "Create tentacle certificate"
Write-Host "######################################"
& d:\psexec.exe -accepteula -u uitest -p nhV9y2JT -h "$tentacleExe" new-certificate --instance "Tentacle" --if-blank --console
& $tentacleExe configure --instance "Tentacle" --reset-trust --console
& $tentacleExe configure --instance "Tentacle" --home "C:\Octopus" --app "C:\Octopus\Applications" --port "10933" --console
& $tentacleExe configure --instance "Tentacle" --trust "9B42703494D539418F36DAFF47B19989C1A57254" --console
& "netsh" advfirewall firewall add rule "name=Octopus Deploy Tentacle" dir=in action=allow protocol=TCP localport=10933
#& $tentacleExe register-with --instance "Tentacle" --server "http://YOUR_OCTOPUS" --apiKey="API-YOUR_API_KEY" --role "web-server" --environment "Staging" --comms-style TentaclePassive --console
Write-Host "######################################"
Write-Host "Start tentacle service"
Write-Host "######################################"
& $tentacleExe service --instance "Tentacle" --install --start --console

Start-Sleep -Seconds 30

#Write-Host "######################################"
#Write-Host "Get tentacle thumbprint"
#Write-Host "######################################"
##& d:\psexec.exe -accepteula -u uitest -p nhV9y2JT -h "$tentacleExe" show-thumbprint --instance "Tentacle" --nologo
#& "$tentacleExe" show-thumbprint --instance "Tentacle" --nologo --console 2>&1 | Out-File D:\tentacle-thumbprint.txt
