Add-WindowsFeature Web-Server
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