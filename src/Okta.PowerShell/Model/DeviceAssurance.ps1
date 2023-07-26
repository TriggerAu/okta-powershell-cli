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

.PARAMETER CreatedBy
No description available.
.PARAMETER CreatedDate
No description available.
.PARAMETER DiskEncryptionType
No description available.
.PARAMETER Id
No description available.
.PARAMETER Jailbreak
No description available.
.PARAMETER LastUpdatedBy
No description available.
.PARAMETER LastUpdatedDate
No description available.
.PARAMETER Name
Display name of the Device Assurance Policy
.PARAMETER OsVersion
No description available.
.PARAMETER Platform
No description available.
.PARAMETER ScreenLockType
No description available.
.PARAMETER SecureHardwarePresent
No description available.
.PARAMETER Links
No description available.
.OUTPUTS

DeviceAssurance<PSCustomObject>
#>

function Initialize-OktaDeviceAssurance {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${CreatedBy},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${CreatedDate},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${DiskEncryptionType},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Id},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${Jailbreak},
        [Parameter(Position = 5, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${LastUpdatedBy},
        [Parameter(Position = 6, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${LastUpdatedDate},
        [Parameter(Position = 7, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Name},
        [Parameter(Position = 8, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${OsVersion},
        [Parameter(Position = 9, ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("ANDROID", "IOS", "MACOS", "WINDOWS")]
        [PSCustomObject]
        ${Platform},
        [Parameter(Position = 10, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${ScreenLockType},
        [Parameter(Position = 11, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${SecureHardwarePresent},
        [Parameter(Position = 12, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Links}
    )

    Process {
        'Creating PSCustomObject: Okta.PowerShell => OktaDeviceAssurance' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "createdBy" = ${CreatedBy}
            "createdDate" = ${CreatedDate}
            "diskEncryptionType" = ${DiskEncryptionType}
            "id" = ${Id}
            "jailbreak" = ${Jailbreak}
            "lastUpdatedBy" = ${LastUpdatedBy}
            "lastUpdatedDate" = ${LastUpdatedDate}
            "name" = ${Name}
            "osVersion" = ${OsVersion}
            "platform" = ${Platform}
            "screenLockType" = ${ScreenLockType}
            "secureHardwarePresent" = ${SecureHardwarePresent}
            "_links" = ${Links}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to DeviceAssurance<PSCustomObject>

.DESCRIPTION

Convert from JSON to DeviceAssurance<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

DeviceAssurance<PSCustomObject>
#>
function ConvertFrom-OktaJsonToDeviceAssurance {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: Okta.PowerShell => OktaDeviceAssurance' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in OktaDeviceAssurance
        $AllProperties = ("createdBy", "createdDate", "diskEncryptionType", "id", "jailbreak", "lastUpdatedBy", "lastUpdatedDate", "name", "osVersion", "platform", "screenLockType", "secureHardwarePresent", "_links")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "createdBy"))) { #optional property not found
            $CreatedBy = $null
        } else {
            $CreatedBy = $JsonParameters.PSobject.Properties["createdBy"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "createdDate"))) { #optional property not found
            $CreatedDate = $null
        } else {
            $CreatedDate = $JsonParameters.PSobject.Properties["createdDate"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "diskEncryptionType"))) { #optional property not found
            $DiskEncryptionType = $null
        } else {
            $DiskEncryptionType = $JsonParameters.PSobject.Properties["diskEncryptionType"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "id"))) { #optional property not found
            $Id = $null
        } else {
            $Id = $JsonParameters.PSobject.Properties["id"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "jailbreak"))) { #optional property not found
            $Jailbreak = $null
        } else {
            $Jailbreak = $JsonParameters.PSobject.Properties["jailbreak"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "lastUpdatedBy"))) { #optional property not found
            $LastUpdatedBy = $null
        } else {
            $LastUpdatedBy = $JsonParameters.PSobject.Properties["lastUpdatedBy"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "lastUpdatedDate"))) { #optional property not found
            $LastUpdatedDate = $null
        } else {
            $LastUpdatedDate = $JsonParameters.PSobject.Properties["lastUpdatedDate"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "name"))) { #optional property not found
            $Name = $null
        } else {
            $Name = $JsonParameters.PSobject.Properties["name"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "osVersion"))) { #optional property not found
            $OsVersion = $null
        } else {
            $OsVersion = $JsonParameters.PSobject.Properties["osVersion"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "platform"))) { #optional property not found
            $Platform = $null
        } else {
            $Platform = $JsonParameters.PSobject.Properties["platform"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "screenLockType"))) { #optional property not found
            $ScreenLockType = $null
        } else {
            $ScreenLockType = $JsonParameters.PSobject.Properties["screenLockType"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "secureHardwarePresent"))) { #optional property not found
            $SecureHardwarePresent = $null
        } else {
            $SecureHardwarePresent = $JsonParameters.PSobject.Properties["secureHardwarePresent"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "_links"))) { #optional property not found
            $Links = $null
        } else {
            $Links = $JsonParameters.PSobject.Properties["_links"].value
        }

        $PSO = [PSCustomObject]@{
            "createdBy" = ${CreatedBy}
            "createdDate" = ${CreatedDate}
            "diskEncryptionType" = ${DiskEncryptionType}
            "id" = ${Id}
            "jailbreak" = ${Jailbreak}
            "lastUpdatedBy" = ${LastUpdatedBy}
            "lastUpdatedDate" = ${LastUpdatedDate}
            "name" = ${Name}
            "osVersion" = ${OsVersion}
            "platform" = ${Platform}
            "screenLockType" = ${ScreenLockType}
            "secureHardwarePresent" = ${SecureHardwarePresent}
            "_links" = ${Links}
        }

        return $PSO
    }

}
