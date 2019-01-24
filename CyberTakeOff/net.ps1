[Appdomain]::CurrentDomain.GetAssemblies()
[Appdomain]::CurrentDomain.GetAssemblies() | ForEach-Object {$_.GetTypes()} | Where-Object {$_.IsPublic -eq "True"}
$Classes = [Appdomain]::CurrentDomain.GetAssemblies() | ForEach-Object {$_.GetTypes()} | Where-Object {$_.IsPublic -eq "True"}
$Classes | Where-Object {$_.Name -eq "Process"}
$ProcClass = $Classes | Where-Object {$_.Name -eq "Process"}

$ProcClass.Fullname
[System.Diagnostics.Process]::GetCurrentProcess
[System.Diagnostics.Process]::GetCurrentProcess()

Add-Type -Assemblyname System.Windows.Forms
[System.Windows.forms.Sendkeys]
[System.Windows.forms.Sendkeys] | Get-Member -Static
[System.Windows.Forms.Sendkeys]::SendWait
[System.Windows.forms.Sendkeys] | Get-Member -Static | Format-List *
get-help Format-List
[System.Windows.Forms.Sendkeys]::SendWait("Powershell for Penetration Testers")

[System.ServiceProcess.ServiceController]
Add-Type -AssemblyName System.ServiceProcess
[System.ServiceProcess.ServiceController]
[System.ServiceProcess.ServiceController] | Get-Member -Static | Format-List *
[System.ServiceProcess.ServiceController]::GetDevices()