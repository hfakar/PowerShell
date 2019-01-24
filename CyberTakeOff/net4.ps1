$obj = Add-Type -Path .\SysCommands.dll -PassThru
[Syscommands]::lookup("google.com")

$obj.getMethods() | Where-Object {$_.Name -eq "netcmd" }