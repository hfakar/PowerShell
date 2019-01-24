New-Item -Path HKCU:\hfakar
New-Item -Path HKCU:\hfakar\NewSubKey

New-ItemProperty -Path HKCU:\hfakar -Name Reg2 -PropertyType String -Value 2
Rename-Item HKCU:\hfakar -newname hfakarnew

Rename-ItemProperty HKCU:\hfakarnew -Name reg2 -NewName Reg3
Set-ItemProperty HKCU:\hfakarnew -Name reg2 -value 55

Get-ItemProperty HKCU:\hfakarnew -Name reg2
New-ItemProperty 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\sethc.exe' -name debugger -PropertyType string -Value cmd.exe