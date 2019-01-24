Set-Item WSMan:\localhost\cl
Set-Item WSMan:\localhost\client/trustedhosts -Value *
Get-Item WSMan:\localhost\client/trustedhosts


Invoke-Command -ScriptBlock {$env:COMPUTERNAME} -ComputerName localhost -Credential hfakar
Invoke-Command -ScriptBlock {$env:COMPUTERNAME} -ComputerName localhost -Credential hfakar
$env:COMPUTERNAME
Invoke-Command -ScriptBlock {$env:COMPUTERNAME} -ComputerName hfakar -Credential hfaka
Invoke-Command -ScriptBlock {Get-Process} -ComputerName hfakar -Credential hfaka
New-PSSession -ComputerName hfakar -credential yildiz.holding\
Get-PSSession
$PSVersionTable
Enter-PSSession -Id 1
Invoke-Command -FilePath 'C:\Users\hfaka\Desktop\pentester Powershell\advencedfunction.ps1' -ComputerName hfakar -credential yildiz.holding/
Invoke-Command -ScriptBlock ($procs = Get-Process) -ComputerName domainpc -Credential akar\domainuser
New-PSSession -ComputerName domainpc -Credential akar\domainuser

$Sess = Get-PSSession
Invoke-Command -ScriptBlock {$procs = Get-Process} -Session $Sess
Invoke-Command -ScriptBlock ($procs) -Session $Sess

Get-PSSession
Invoke-Command -ScriptBlock {function Get-SysInfo {whoami; $env:Computername}} -Session $Sess
Invoke-Command -ScriptBlock {Get-Sysinfo} -Session $Sess

Import-PSSession -CommandName Get-Sysinfo -Session $Sess
Get-SysInfo
Export-PSSession -ModuleName domainmodule -CommandName Get-SysInfo -Session $Sess -AllowClobber -Force




