function advencedfunction
{
    param (
    [Parameter (Mandatory = $True, Position = 0, ValueFromPipeline = $true, ParameterSetName ="paramset1")]
    $a,

    [Parameter (Position = 1, ParameterSetName ="paramset2")]
    $b
    )

    Write-Output "a is $a"
    Write-Output "b is $b"
}

function Test-FileExistence
{
 Test-Path $FilePath
}

function DoNoNeedToShow
{
    Write-Output "No need to show this to user"
}

Export-ModuleMember -Function *-*