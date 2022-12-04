param(
    [Parameter(Mandatory=$True,Position=1)]
    [string]$vmName,
    [Parameter(Mandatory=$True,Position=2)]
    [string]$vmRG
)

try
{
#region Authentication

# Define the variables required to connect

$tenantId = "fef74bb7-1c96-452f-a8eb-1082b0e72c84"

$spPassword = "Mif8Q~.uNh6Pe2gxxclen~Z7gDpos4NxfR4QtdoL" #Need to be a secured variable (preferrably use Service Principal) - just for demo purposes I have used it as a string.

$servicePrincipalAppID = "bb1eb6f4-5b79-44e9-89bd-403b4d6f0c7a" # This is the Application ID of the Enterprise App


# Convert the Service Principal secret to secure string

$password = ConvertTo-SecureString $spPassword -AsPlainText -Force


# Create a new credentials object containing the application ID and password that will be used to authenticate

$psCredentials = New-Object System.Management.Automation.PSCredential ($servicePrincipalAppID, $password)


# Authenticate with the credentials object

Connect-AzAccount -ServicePrincipal -Credential $psCredentials -Tenant $tenantId

#endregion Authentication

##############################################################################################################################################
## We can directly use the below commands if invoking through Service connection on ADO. No need to authenticate explicitaly.                                                                                                             
##############################################################################################################################################

#fetching metadata of the VM and storing in output variable
$output = Get-AzVM -Name $vmName -ResourceGroupName $vmRG

#Converting the output in JSON
$output | ConvertTo-Json
}
catch
{
    Write-Host $_.Exception.Message
}

