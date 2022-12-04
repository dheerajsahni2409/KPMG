param(
    [Parameter(Mandatory=$True,Position=1)]
    [string]$input1,
    [Parameter(Mandatory=$True,Position=2)]
    [string]$input2,
    [Parameter(Mandatory=$True,Position=3)]
    [string]$input3,    
    [Parameter(Mandatory=$True,Position=4)]
    [string]$input4,
    [Parameter(Mandatory=$True,Position=5)]
    [string]$key
)

function object ($input1,$input2,$input3,$input4,$key)
{

$object = [PSCustomObject]@{ $input1 = [PSCustomObject]@{ $input2 = [PSCustomObject]@{ $input3 = $input4 } } }

    if ($key -eq "$input1")
    {
        return $object.$input1
    }
    elseif ($key -eq ("$input1.$input2"))
    {
        return $object.$input1.$input2
    }
    elseif ($key -eq ("$input1.$input2.$input3"))
    {
        return $object.$input1.$input2.$input3
    }
    else 
    {
        Write-Host "Key doesn't match"
    }
}

$output = object $input1 $input2 $input3 $input4 $key

$output | ConvertTo-Json -Depth 5
