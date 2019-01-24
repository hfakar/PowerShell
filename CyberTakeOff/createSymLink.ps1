$Apicode = @"
    [DllImport("kernel32.dll")]
public static extern bool CreateSymbolicLink(string lpSymlinkFileName, string lpTargetFileName, int  dwFlags);
"@

$SymLink = Add-Type -MemberDefinition $Apicode -Name Symlink -Namespace CreateSymLink -PassThru
$SymLink::CreateSymbolicLink('C:\Users\hfaka\Desktop\pentester Powershell\link',  'C:\Users\', 1)