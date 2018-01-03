Get-EventLog -LogName Application -ComputerName hfakar -InstanceId 916

Get-EventLog Application 916 -ComputerName hfakar

get-service net*

Get-ChildItem C:\Windows\[wr]*exe

Get-Module

Get-Command -Module ISE
 
Install-Windowsfeature  XPS-viewer

Get-Process | Sort-Object -Property Name -Descending

Get-Process | Sort-Object  Name -Desc

Get-Process | Sort-Object  Name,CPU -Desc

Get-Process | select -Last 10
 
Get-Process | select -Last 10 -Skip 1

Get-Process | Select Name, CPU

Get-Service net* | Select * 

Get-Service net* | Select -ExpandProperty name

Get-Service | Format-Table -Property Name,Status

Get-Service | ft Name,Status

Get-Service | Format-List name,status

Get-Service | fl Name,Status

Get-Service | ft DisplayName,Status,Name,DependentServices

Get-Service | ft DisplayName,Status,Name,DependentServices -Wrap

Get-Service | fl * | more

Get-Process | select Name,CPU

Get-Process | ft Name,CPU

Get-Process  notepad,*calc* | ft Name,CPU | Stop-Process

Get-Process notepad,*calc* | select Name,CPU |Stop-Process

Get-Process notepad, *calc* | kill

Get-Process notepad, *calc* | Stop-Process

Get-Process | Out-File -FilePath C:\hfakar.txt

Get-Process | Select Name,Status | ConvertTo-Csv | Out-File -FilePath C:\hfakar.csv

Get-Process | Select Name,Status |Out-GridView

100 -gt 10

"hello" -eq "HELLO"

"hello" -ceq "HELLO"

'hello' -ceq 'HELLO'

Get-Service -Status "Running"

Get-Service | where Status -EQ "Running"

Get-Service | Where Name -Like "spoo*"

cls

Get-Service | Where-Object -FilterScript {$_.Status -eq "Running"} # Where is alias to where-object 

Get-Alias

Get-Service | ? {$_.Status -eq "Running"} # Where is alias to where-object 

Get-Service | ? {$PSItem.Status -eq "Running"} # Where is alias to where-object 

Get-Service | Where {$_.Name -like "n*" -and $_.Status -eq "Running"}

Get-Process | Where {$_.Name -like "a*"}