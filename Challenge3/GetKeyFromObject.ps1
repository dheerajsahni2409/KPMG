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

#Starting function to create object and retrieve value based on the provided key
function object ($input1,$input2,$input3,$input4,$key)
{
try{
    #Declaring Object
    $object = [PSCustomObject]@{ $input1 = [PSCustomObject]@{ $input2 = [PSCustomObject]@{ $input3 = $input4 } } }
    
    #Declaring IF/ELSE condition to check the key-value pairing
    #Checking for 1st case with top level key
    if ($key -eq "$input1")
    {
        return $object.$input1
    }
    #checking second case with next level key
    elseif ($key -eq ("$input1.$input2"))
    {
        return $object.$input1.$input2
    }
    #checking second case with last level key
    elseif ($key -eq ("$input1.$input2.$input3"))
    {
        return $object.$input1.$input2.$input3
    }
    #Declaring case for invalid key
    else 
    {
        Write-Host "Key doesn't match, please check the key again"
    }
}
catch
{
    Write-Host $_.Exception.Message
}
}

#calling the function
$output = object $input1 $input2 $input3 $input4 $key

#converting the output in JSON format for readability
$output | ConvertTo-Json -Depth 5
