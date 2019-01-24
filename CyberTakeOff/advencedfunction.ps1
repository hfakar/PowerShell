function advencedfunction
{
    param (
    [Parameter (Mandatory = $True, Position = 0, ValueFromPipeline = $true, ParameterSetName ="paramset1") ]
    [ValidateSet(1,2,3)]
    $a,

    [Parameter (Position = 1, ParameterSetName ="paramset2")]
    $b
    )

    Write-Output "a is $a"
    Write-Output "b is $b"
}