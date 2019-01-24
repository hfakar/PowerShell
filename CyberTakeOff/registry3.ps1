Invoke-Command -ScriptBlock {Get-Item HKLM:\Software} -ComputerName dc -Credential windomain\vagrant

$RemoteReg = Get-WmiObject -List "StdRegProv" -ComputerName dc -Credential windomain\vagrant
$RemoteReg | Select-Object -ExpandProperty methods

$RemoteReg.GetStringValue(2147483650, "Software\Microsoft\Windows NT\CurrentCersion")
$RemoteReg.GetStringValue(2147483650, "Software\Microsoft\Windows NT\CurrentCersion", "ProductName")
[Microsoft.win32.RegistryKey].GetMethods()