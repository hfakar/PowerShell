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

1..5

1..5 | foreach {Get-Random -Maximum 100}

1..5 | % {Get-Random -Maximum 100}

Get-Service net* | % {$_.Name + " service is " + $_.Status}

Get-Service Spooler, MpsSvc | Stop-Service

Get-Service Spooler, MpsSvc | Start-Service

"Spooler", "Mpssvc" Stop-Service # Wrong

Get-Process *calc*,notepad | Stop-Process

Get-Help Stop-Process -Full



#by value vs by property

Get-service MpsSvc, Spooler | select Name

Get-service MpsSvc, Spooler | select Name -ExpandProperty name

Get-service MpsSvc, Spooler | select Name -ExpandProperty name | Stop-Service

Get-service MpsSvc, Spooler | select Name -ExpandProperty name | Start-Service



#Variables
$name = "Hfakar"

$name  #hfakar

Get-Variable

$PSVersionTable

#getting input

$name = Read-Host "What is Your name?"

$surname = Read-Host "What is Your surname?"

$fullname = $name + " " + $surname

Write-Host "Your name is $fullname"

[int]$number1 = Read-Host "Enter the first number"

[int]$number2 = Read-Host "Enter the second number"

$result = $number1 + $number2

Write-Host $result


###if else conditions

[int]$number=Read-Host "Enter a number"
if($number -lt 100){
    Write-Host "$number is less than 100"


}

elseif($number -eq 100){
    Write-host "$number is equal to 100"

}

else{
    Write-host "$number is greater than 100"

}

#error handling

try{
    [int]$number=Read-Host "Enter a number"
if($number -lt 100){
    Write-Host "$number is less than 100"


}

elseif($number -eq 100){
    Write-host "$number is equal to 100"

}

else{
    Write-host "$number is greater than 100"

}

}
catch{
    Write-Host  "Error" -BackgroundColor Red
}
finally{
    Write-Host "Have a good day"
}


###Functions

function Sum {
    [CmdletBinding()]
    param(
        [Parameter(Mandatory=$true, HelpMessage="Enter the first number")][int]$number1,
        [Parameter(Mandatory=$true, HelpMessage="Enter the second number")][int]$number2
    )
    $result = $number1 + $number2
    return $result
}
Sum