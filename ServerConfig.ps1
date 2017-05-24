Add-WindowsFeature Web-Server,Web-Scripting-Tools,Web-Mgmt-Console,web-asp-net45
Enable-PSRemoting -Force
Set-NetFirewallRule -Name "WINRM-HTTP-In-TCP-PUBLIC" -RemoteAddress Any

Function Set-SessionConfig
{
 Param( [string]$user )
    $account = New-Object Security.Principal.NTAccount $user
    $sid = $account.Translate([Security.Principal.SecurityIdentifier]).Value
 
    $config = Get-PSSessionConfiguration -Name "Microsoft.PowerShell"
    $existingSDDL = $Config.SecurityDescriptorSDDL
 
    $isContainer = $false
    $isDS = $false
    $SecurityDescriptor = New-Object -TypeName Security.AccessControl.CommonSecurityDescriptor -ArgumentList $isContainer,$isDS, $existingSDDL
    $accessType = "Allow"
    $accessMask = 268435456
    $inheritanceFlags = "none"
    $propagationFlags = "none"
    $SecurityDescriptor.DiscretionaryAcl.AddAccess($accessType,$sid,$accessMask,$inheritanceFlags,$propagationFlags)
    $SecurityDescriptor.GetSddlForm("All")
} #end Set-SessionConfig

$user = "$env:computername\$env:UserName"
$newSDDL = Set-SessionConfig -user $user
Get-PSSessionConfiguration |
ForEach-Object {
 Set-PSSessionConfiguration -name $_.name -SecurityDescriptorSddl $newSDDL -force }

mkdir D:\download
Invoke-WebRequest 'http://download.microsoft.com/download/C/F/F/CFF3A0B8-99D4-41A2-AE1A-496C08BEB904/WebPlatformInstaller_amd64_en-US.msi' -OutFile D:/download/WebPlatformInstaller_amd64_en-US.msi
Start-Process 'D:/download/WebPlatformInstaller_amd64_en-US.msi' '/qn' -PassThru | Wait-Process
& 'C:\Program Files\Microsoft\Web Platform Installer\WebpiCmd-x64.exe' /Install /Products:'UrlRewrite2,ARRv3_0' /AcceptEULA /Log:D:\download\Webpicmd.log

[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12
Invoke-WebRequest 'https://octopus.com/downloads/latest/WindowsX64/OctopusTentacle' -OutFile D:\download\tentacle.msi
& msiexec /i d:\download\tentacle.msi /quiet

reg add HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\system /v LocalAccountTokenFilterPolicy /t REG_DWORD /d 1 /f

mkdir "C:\Program Files\Financial Simplicity\OnTarget"
