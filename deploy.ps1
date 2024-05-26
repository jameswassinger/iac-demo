[CmdletBinding()]
param (
    [Parameter(Mandatory)]
    [string]
    $SubscriptionId
)

trap [System.Exception] {
    throw "An unexpected issue has occurred! $($_.Exception.Message)"
}

Set-AzContext -SubscriptionId $SubscriptionId

$rgName = "rg-github-acitons-demo"


New-AzResourceGroup -Name $rgName -Location "Central US" -Force