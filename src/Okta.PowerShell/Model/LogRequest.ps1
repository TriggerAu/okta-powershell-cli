#
# Okta Management
# Allows customers to easily access the Okta Management APIs
# Version: 3.0.0
# Contact: devex-public@okta.com
# Generated by OpenAPI Generator: https://openapi-generator.tech
#

<#
.SYNOPSIS

No summary available.

.DESCRIPTION

No description available.

.PARAMETER IpChain
No description available.
.OUTPUTS

LogRequest<PSCustomObject>
#>

function Initialize-OktaLogRequest {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${IpChain}
    )

    Process {
        'Creating PSCustomObject: Okta.PowerShell => OktaLogRequest' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "ipChain" = ${IpChain}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to LogRequest<PSCustomObject>

.DESCRIPTION

Convert from JSON to LogRequest<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

LogRequest<PSCustomObject>
#>
function ConvertFrom-OktaJsonToLogRequest {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: Okta.PowerShell => OktaLogRequest' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in OktaLogRequest
        $AllProperties = ("ipChain")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "ipChain"))) { #optional property not found
            $IpChain = $null
        } else {
            $IpChain = $JsonParameters.PSobject.Properties["ipChain"].value
        }

        $PSO = [PSCustomObject]@{
            "ipChain" = ${IpChain}
        }

        return $PSO
    }

}
