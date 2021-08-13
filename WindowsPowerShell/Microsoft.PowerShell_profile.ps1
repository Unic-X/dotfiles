Import-Module posh-git
Import-Module oh-my-posh
Set-PoshPrompt -Theme paradox
function Check-IsElevated
 
 {
 
    $id = [System.Security.Principal.WindowsIdentity]::GetCurrent()
 
    $p = New-Object System.Security.Principal.WindowsPrincipal($id)
 
    if ($p.IsInRole([System.Security.Principal.WindowsBuiltInRole]::Administrator))
 
   { Write-Host "ha bhai admin masti" }      
 
    else
 
   { Write-Host "no" }   
 
 }
 Set-Alias isadmin Check-IsElevated

 function Get-Version {
    $PSVersionTable.PSVersion
}


function compileAndRun {
   param (
      [string[]]$str
   )
   if($?){
         $curlocation=ContGet-Location
         Write-Host $curlocation + $str
   }
}
# Chocolatey profile
$ChocolateyProfile = "$env:ChocolateyInstall\helpers\chocolateyProfile.psm1"
if (Test-Path($ChocolateyProfile)) {
  Import-Module "$ChocolateyProfile"
}
