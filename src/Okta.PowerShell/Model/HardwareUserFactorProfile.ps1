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

.PARAMETER CredentialId
No description available.
.OUTPUTS

HardwareUserFactorProfile<PSCustomObject>
#>

function Initialize-OktaHardwareUserFactorProfile {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${CredentialId}
    )

    Process {
        'Creating PSCustomObject: Okta.PowerShell => OktaHardwareUserFactorProfile' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "credentialId" = ${CredentialId}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to HardwareUserFactorProfile<PSCustomObject>

.DESCRIPTION

Convert from JSON to HardwareUserFactorProfile<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

HardwareUserFactorProfile<PSCustomObject>
#>
function ConvertFrom-OktaJsonToHardwareUserFactorProfile {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: Okta.PowerShell => OktaHardwareUserFactorProfile' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in OktaHardwareUserFactorProfile
        $AllProperties = ("credentialId")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "credentialId"))) { #optional property not found
            $CredentialId = $null
        } else {
            $CredentialId = $JsonParameters.PSobject.Properties["credentialId"].value
        }

        $PSO = [PSCustomObject]@{
            "credentialId" = ${CredentialId}
        }

        return $PSO
    }

}
