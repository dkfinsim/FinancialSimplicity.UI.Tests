$tentacleExe = 'c:\program files\Octopus Deploy\Tentacle\Tentacle.exe'
#& d:\psexec.exe -accepteula -u uitest -p nhV9y2JT -h "$tentacleExe" show-thumbprint --instance "Tentacle" --nologo
& "$tentacleExe" show-thumbprint --instance "Tentacle" --nologo --console > D:\tentacle-thumbprint.txt
