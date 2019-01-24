# Set-MpPreference -DisableRealtimeMonitoring $true
# it is for disabling windows defender

Get-NetDomainController windomain

# Get-NetComputer -Domain windomain 
# hatali calisiyor

Get-NetComputer -DomainController dc

Get-NetUser -DomainController dc -ErrorAction SilentlyContinue
(Get-NetUser -DomainController dc -ErrorAction SilentlyContinue).cn



Get-NetGroup -DomainController dc -ErrorAction SilentlyContinue

#eger bir fileservera erisimimiz olursa Bingo!
#Cogunlukla fileserverlara domain admin hesabiyla baglanilmis oluyor

Get-NetFileServer -DomainController dc -ErrorAction SilentlyContinue.


Get-NetLoggedon -HostName win10 -ErrorAction SilentlyContinue

Find-LocalAdminAccess -DomainController dc