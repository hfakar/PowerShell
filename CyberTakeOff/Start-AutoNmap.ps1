$outputpath = "C:\Users\hfaka\Desktop\pentester Powershell"
$IPranges = "192.168.0.0/24", "192.168.1.0/24"
foreach ($range in $IPranges)
{
    $temp = $range -split "/"
    $file = $temp[0]
    & "nmap.exe" "-nvv" "-Pn" "--top-ports" "20" "$range" "-oX" "$outputpath\$file"

# We can automate some tasks with nessus and nmap
#  Posh-nvs
# Export to a variable
# .\Start-AutoNmap.ps1
# .\Parse_Nmap.ps1 -Path .\192.168.0.0
# .\Parse_Nmap.ps1 -Path .\192.168.0.0 -RunStatsOnly
# $nmap = [xml](Get-Content .\192.168.0.0)
# $nmap
# $nmap.nmaprun | Get-Member
# $nmap.nmaprun.host
# $nmap.nmaprun.host | Get-Member
# $nmap.nmaprun.host.status
# https://www.darkoperator.com/blog/2013/4/15/using-posh-secmod-to-automate-nessus-part1.html
# https://www.darkoperator.com/blog/2013/4/18/using-posh-secmod-powershell-module-to-automate-nessus-part.html


#Real world nmap automation in powershell
#https://github.com/hardwaterhacker/scandiff
#https://cyber-defense.sans.org/blog/2009/06/11/powershell-script-to-parse-nmap-xml-output

#usefull blogpost
#https://poshsecurity.com/blog/2011/8/23/automating-nmap-analysis-with-powershell.html
}

