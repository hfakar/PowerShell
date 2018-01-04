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


##Active Directory

New-ADUser -GivenName Huseyin -Surname Akar -Name "Huseyin AKAR" -DisplayName "Huseyin AKAR" `
-SamAccountName h.akar -UserPrincipalName h.akar@hfakar.local -AccountPassword `
(ConvertTo-SecureString -asplaintext "P@ssw0rd" -Force) -ChangePasswordAtLogon $true -Enabled `
$true -Path "ou=istanbulUsers, ou=istanbulOU, ou=organizations, dc=hfakar, dc=local"

#Csv importing 

Import-Csv C:\hfakar.csv -Delimiter "," |
foreach{
New-ADUser -GivenName $_.FirstName -Surname $_.LastName -Name $_.FullName -DisplayName $_.FullName `
-SamAccountName $_.SAM2 -UserPrincipalName $_.UPN -AccountPassword `
(ConvertTo-SecureString -asplaintext "P@ssw0rd" -Force) -ChangePasswordAtLogon $true -Enabled `
$true -Path "ou=istanbulUsers, ou=istanbulOU, ou=organizations, dc=hfakar, dc=local"
}

Import-module ActiveDirectory

Get-ADUser -Filter *

Get-ADUser -Filter * | ft name,userpriciplename

Get-ADUser -Filter {name -like "ahmet sait*"}

Get-ADUser -Filter {name -like "ahmet sait*"} -Properties *

Get-ADUser -Filter {name -like "ahmet sait*"} -Properties whencreated # adding whencreated to default properties

Get-ADOrganizationalUnit -Filter {name -like "ist*"}

Get-ADUser -Filter * -Searchbase "Distinguished name comes here"

#gettin user only from a single ou directory not recursive

Get-ADUser -Filter * -Searchbase "Distinguished name comes here" -SearchScope OneLevel 

$startDate=Get-Date "1/4/2018 11:15:00 AM"

$startDate

$endDate=Get-date "1/5/2018 11:15:00 AM"

$endDate

Get-ADUser -Filter{whencreated -gt $startdate -and whenCreated -lt $endDate} |ft name


Get-ADUser -Filter{whencreated -gt $startdate -and whenCreated -lt $endDate} | Move-ADObject -TargetPath "ou=ankarausers, ou=ankaraou, dc=hfakar"

Update-Help -Module ActiveDirectory

Get-ADUser -Filter * -SearchBase "ou=ankaraou,ou=organizations, dc=druan,dc=local" | Set-ADUser -Description "Engineer" -City "Ankara"


#Reading from a file and looping through it

$users =Import-Csv C:\hfakar.csv

foreach ($user in $users)
{
    $emp = $user.EmployeeID
    $desc = $user.Description
    $phone = $user.phone
    $getUser = Get-ADUser -Filter {employeeid- eq $emp}
    Set-ADUser $getUser -Description $desc -OfficePhone $phone
}

#AD Group Creation
New-ADGroup -Name Engineers -GroupCategory Security -GroupScope Global -Path `
"ou=ankarausers, ou=ankaraOU, ou=organizations, dc=duran,dc=local"

Get-ADGroup -Filter {name -eq "engineers"}

Add-ADGroupMember engineers  -Members $users #Adding to a group

Get-ADGroupMember Engineers 

Get-ADGroupMember Engineers -Recursive | select name


#adding a computer to a domain

Add-Computer -DomainName hfakar.local -OUPath "ou=ankarausers, ou=ankaraOU, ou=organizations, dc=duran,dc=local" `
-Credential (Get-Credential)


#Qeuerying Computer on AD

Get-ADComputer -Filter * 

Get-ADObject   #Querying everything, not just users or computers

Get-ADObject -Filter {objectclass -eq "user" -or objectclass -eq "computer"} -SearchBase `
"ou=ankarausers, ou=ankaraOU, ou=organizations, dc=duran,dc=local" | ft name, objectclass

Get-Command -Module ActiveDirectory



#########################

#WMI and CIM

#########################

#CIM is newer than WMI
#Can be used in linux
#WMI is well known

#group policy operations utilizes the WMI

#WMI filtering usez WQN (WMI QUERY LANGUAGE)

#Select * From WMI_CLASS WHERE WMI_PROPERTY=value

Select * from Win32_OperatingSystem where (Caption like "%Windows 10%")

Get-CimInstance -Class Win32_Share

Get-WmiObject -Class win32_share

#Difference is on the connectiuon when the comman is run

#Finding WMI Classes:
#Online 
#live.sysinternals.com Download Bginfo from there

#Can be distributed with Group Policy

#custom --> Wmi Query --> Browse

#Then You will see the WMI classes and properties on there

Get-WmiObject -Class win32_share -ComputerName #if it is remote than firewall settings need to be changed first#

# there are 3 main firewall rules that WMI requires

#Control Panel Windows Management Instrumantation and the Domain Rules need to be allowed on Windwos Firewall

Get-WmiObject win32_operatingSystem -ComputerName dc2016

Get-WmiObject win32_operatingSystem -ComputerName dc2016 | fl *

Get-WmiObject win32_operatingSystem -ComputerName $computers.name |fl pscomputername, caption

