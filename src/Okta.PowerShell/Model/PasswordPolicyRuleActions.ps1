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

.PARAMETER Enroll
No description available.
.PARAMETER Idp
No description available.
.PARAMETER PasswordChange
No description available.
.PARAMETER SelfServicePasswordReset
No description available.
.PARAMETER SelfServiceUnlock
No description available.
.PARAMETER Signon
No description available.
.OUTPUTS

PasswordPolicyRuleActions<PSCustomObject>
#>

function Initialize-OktaPasswordPolicyRuleActions {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Enroll},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Idp},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${PasswordChange},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${SelfServicePasswordReset},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${SelfServiceUnlock},
        [Parameter(Position = 5, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Signon}
    )

    Process {
        'Creating PSCustomObject: Okta.PowerShell => OktaPasswordPolicyRuleActions' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "enroll" = ${Enroll}
            "idp" = ${Idp}
            "passwordChange" = ${PasswordChange}
            "selfServicePasswordReset" = ${SelfServicePasswordReset}
            "selfServiceUnlock" = ${SelfServiceUnlock}
            "signon" = ${Signon}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to PasswordPolicyRuleActions<PSCustomObject>

.DESCRIPTION

Convert from JSON to PasswordPolicyRuleActions<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

PasswordPolicyRuleActions<PSCustomObject>
#>
function ConvertFrom-OktaJsonToPasswordPolicyRuleActions {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: Okta.PowerShell => OktaPasswordPolicyRuleActions' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in OktaPasswordPolicyRuleActions
        $AllProperties = ("enroll", "idp", "passwordChange", "selfServicePasswordReset", "selfServiceUnlock", "signon")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "enroll"))) { #optional property not found
            $Enroll = $null
        } else {
            $Enroll = $JsonParameters.PSobject.Properties["enroll"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "idp"))) { #optional property not found
            $Idp = $null
        } else {
            $Idp = $JsonParameters.PSobject.Properties["idp"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "passwordChange"))) { #optional property not found
            $PasswordChange = $null
        } else {
            $PasswordChange = $JsonParameters.PSobject.Properties["passwordChange"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "selfServicePasswordReset"))) { #optional property not found
            $SelfServicePasswordReset = $null
        } else {
            $SelfServicePasswordReset = $JsonParameters.PSobject.Properties["selfServicePasswordReset"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "selfServiceUnlock"))) { #optional property not found
            $SelfServiceUnlock = $null
        } else {
            $SelfServiceUnlock = $JsonParameters.PSobject.Properties["selfServiceUnlock"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "signon"))) { #optional property not found
            $Signon = $null
        } else {
            $Signon = $JsonParameters.PSobject.Properties["signon"].value
        }

        $PSO = [PSCustomObject]@{
            "enroll" = ${Enroll}
            "idp" = ${Idp}
            "passwordChange" = ${PasswordChange}
            "selfServicePasswordReset" = ${SelfServicePasswordReset}
            "selfServiceUnlock" = ${SelfServiceUnlock}
            "signon" = ${Signon}
        }

        return $PSO
    }

}
