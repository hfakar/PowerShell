Get-ChildItem REGISTRY::HKEY_CLASSES_ROOT\CLSID -Include PROGID -Recurse | foreach {$_.GetValue("")} | Where-Object {$_ -match "wscript"}

$wscript = New-Object -ComObject Wscript.Shell.1

$wscript | Get-Member

$wscript.CurrentDirectory

$wscript.sendkeys("hfakar")

$wscript.exec("notepad.exe")

Get-ChildItem REGISTRY::HKEY_CLASSES_ROOT\CLSID -Include PROGID -Recurse | foreach {$_.GetValue("")} | Where-Object {$_ -match "Application"}

Get-ChildItem REGISTRY::HKEY_CLASSES_ROOT\CLSID -Include PROGID -Recurse | foreach {$_.GetValue("")} | Where-Object {$_ -match "Shell.Application"}

$ShellApp = New-Object -ComObject Shell.Application.1

$ShellApp | Get-Member

$ShellApp.windows()

$IEProcess = [System.Diagnostics.Process]::Start("iexplore", "-noframemerging")