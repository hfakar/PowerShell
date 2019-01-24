$DotnetCode = @"
using System;
using System.Windows.Forms;
public class SysCommands{
    public static void lookup (string domainname){
        System.Diagnostics.Process.Start("nslookup.exe", domainname);
    }

    public void netcmd (string cmd)
    {
        string cmdstring = "/k net.exe " + cmd;
        System.Diagnostics.Process.Start("cmd.exe",cmdstring);

    }

    public static void Main(){
        string cmdstring = "/k net.exe " + "user";
        System.Diagnostics.Process.Start("cmd.exe",cmdstring);

        DialogResult dialogResult = MessageBox.Show("Sure", "Some Title", MessageBoxButtons.YesNo);
        if(dialogResult == DialogResult.Yes)
        {
            //do something
            Console.WriteLine("Yes");
        }
        else if (dialogResult == DialogResult.No)
        {
            //do something else
            Console.WriteLine("No");
        }
    }

}
"@

Add-Type -TypeDefinition $DotnetCode -OutputType ConsoleApplication -OutputAssembly 'C:\Users\hfaka\Desktop\Tekla.exe'


