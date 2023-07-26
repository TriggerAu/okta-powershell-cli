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

.PARAMETER Attribute
No description available.
.PARAMETER Patterns
No description available.
.PARAMETER Type
No description available.
.OUTPUTS

UserIdentifierPolicyRuleCondition<PSCustomObject>
#>

function Initialize-OktaUserIdentifierPolicyRuleCondition {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Attribute},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${Patterns},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("ATTRIBUTE", "IDENTIFIER")]
        [PSCustomObject]
        ${Type}
    )

    Process {
        'Creating PSCustomObject: Okta.PowerShell => OktaUserIdentifierPolicyRuleCondition' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "attribute" = ${Attribute}
            "patterns" = ${Patterns}
            "type" = ${Type}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to UserIdentifierPolicyRuleCondition<PSCustomObject>

.DESCRIPTION

Convert from JSON to UserIdentifierPolicyRuleCondition<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

UserIdentifierPolicyRuleCondition<PSCustomObject>
#>
function ConvertFrom-OktaJsonToUserIdentifierPolicyRuleCondition {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: Okta.PowerShell => OktaUserIdentifierPolicyRuleCondition' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in OktaUserIdentifierPolicyRuleCondition
        $AllProperties = ("attribute", "patterns", "type")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "attribute"))) { #optional property not found
            $Attribute = $null
        } else {
            $Attribute = $JsonParameters.PSobject.Properties["attribute"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "patterns"))) { #optional property not found
            $Patterns = $null
        } else {
            $Patterns = $JsonParameters.PSobject.Properties["patterns"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "type"))) { #optional property not found
            $Type = $null
        } else {
            $Type = $JsonParameters.PSobject.Properties["type"].value
        }

        $PSO = [PSCustomObject]@{
            "attribute" = ${Attribute}
            "patterns" = ${Patterns}
            "type" = ${Type}
        }

        return $PSO
    }

}
