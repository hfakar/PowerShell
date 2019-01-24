Get-Help *wmi*

Get-WmiObject -Namespace "root" -Class "__Namespace" | Select-Object name

Get-WmiObject -Namespace "root/cimv2" -List

Get-WmiObject -Namespace "root/cimv2" -List | Where-object {$_.Name -match "process"}

Get-WmiObject -Namespace "root/cimv2" -List | Where-object {$_.Name -match "win32"}

Get-WmiObject -Class Win32_process -List | Select-Object -ExpandProperty Methods



Get-WmiObject -Class win32_process | Where-Object {$_.Name -eq "powershell.exe"}

Get-WmiObject -Query {select * from win32_process where Name = "powershell.exe"}

Get-WmiObject -Query {select * from win32_process where Name = "powershell.exe"} | Remove-WmiObject

Get-WmiObject -Class Win32_process -List | Select-Object -ExpandProperty Methods

Invoke-WmiMethod -Class win32_process -Name create -ArgumentList "powershell.exe"

Get-WmiObject -Class win32_process -Filter {name = "powershell.exe"} -ComputerName dc -Credential windomain\vagrant

Get-WmiObject -Class win32_process -Filter {name = "powershell.exe"} -ComputerName dc -Credential windomain\vagrant | Remove-WmiObject