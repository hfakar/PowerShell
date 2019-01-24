Get-Help *job*

Start-Job -ScriptBlock {whoami.exe}

Get-Job
Get-Job | Receive-Job

Get-Job | Remove-Job

Get-Command -ParameterName Asjob


Invoke-Command -ScriptBlock {ps} -ComputerName domainpc -Credential hfakar\domainuser

Invoke-Command -ScriptBlock {Start-job -ScriptBlock {ps}} -ComputerName domainpc -Credential hfakar\domainuser
