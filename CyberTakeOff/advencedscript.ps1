function Show-AdvencedScript
{
    [Cmdletbinding(SupportsShouldProcess = $True)]
    param(
        [Parameter()]
        $FilePath
    )
    
    Write-Verbose "Deleting $FilePath"
    
    if ($PSCmdlet.ShouldProcess("$FilePath", "Deleting file permanantly")){

    Remove-Item $FilePath
    }
}