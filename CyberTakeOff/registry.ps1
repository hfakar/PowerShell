Get-PSProvider -PSProvider Registry

get-item 'HKLM:\Software\Microsoft\Windows NT\CurrentVersion'

get-item 'HKLM:\Software\Microsoft\Windows NT\CurrentVersion' | Format-List *

Get-ChildItem 'HKLM:\Software\Microsoft\Windows NT\CurrentVersion'

Get-ChildItem 'HKLM:\Software\Microsoft\Windows NT\CurrentVersion' -Recurse

Set-Location Registry::

ls
cd .\HKEY_CLASSES_ROOT
ls
C:
New-PSDrive -name RegistryDrive -PSProvider Registry -Root Registry::HKEY_CLASSES_ROOT

cd RegistryDrive:
ls
Get-PSDrive

