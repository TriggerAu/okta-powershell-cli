#
# Okta Management
# Allows customers to easily access the Okta Management APIs
# Version: 3.0.0
# Contact: devex-public@okta.com
# Generated by OpenAPI Generator: https://openapi-generator.tech
#

function Get-FunctionsToExport {
    [CmdletBinding()]
    Param (
        [Parameter(Mandatory = $true, ValueFromPipelineByPropertyName = $true)]
        [ValidateNotNullOrEmpty()]
        [Alias('FullName')]
        $Path
    )

    Process {
        $Token = $null
        $ParserErr = $null

        $Ast = [System.Management.Automation.Language.Parser]::ParseFile(
            $Path,
            [ref]$Token,
            [ref]$ParserErr
        )

        if ($ParserErr) {
            throw $ParserErr
        } else {
            foreach ($name in 'Begin', 'Process', 'End') {
                foreach ($Statement in $Ast."${name}Block".Statements) {
                    if (
                        [String]::IsNullOrWhiteSpace($Statement.Name) -or
                        $Statement.Extent.ToString() -notmatch
                        ('function\W+{0}' -f $Statement.Name)
                    ) {
                        continue
                    }

                    $Statement.Name
                }
            }
        }
    }
}

$ScriptDir = Split-Path $script:MyInvocation.MyCommand.Path
$FunctionPath = 'Api', 'Model', 'Client' | ForEach-Object {Join-Path "$ScriptDir\src\Okta.PowerShell\" $_}

$Manifest = @{
    Path = "$ScriptDir\src\Okta.PowerShell\Okta.PowerShell.psd1"

    Author = 'Okta, Inc.'
    CompanyName = 'Okta'
    Description = 'Okta.PowerShell - the PowerShell module for Okta Management'
    Tags = @('Okta' ,'api' ,'authentication' ,'identity' ,'management' ,'PSEdition_Core' )
    ProjectUri = 'https://github.com/okta/okta-powershell-cli'
    LicenseUri = 'https://github.com/okta/okta-powershell-cli/blob/main/LICENSE.md'
    IconUri = 'https://cdn.brandfolder.io/R30ALRIS/at/mtg52xxxcr939z2ns8jrg3mz/Okta_Aura_CMYK_Black.png'
    ReleaseNotes = 'https://github.com/okta/okta-powershell-cli/releases'

    
    ModuleVersion = '1.0.4'
    

    RootModule = 'Okta.PowerShell.psm1'
    Guid = '{257FCF83-C4E5-475C-B2C7-E624D7A7B6F3}' # Has to be static, otherwise each new build will be considered different module

    PowerShellVersion = '6.2'
    
    CompatiblePSEditions = 'Core'
    
    FunctionsToExport = $FunctionPath | Get-ChildItem -Filter *.ps1 | Get-FunctionsToExport

    VariablesToExport = @()
    AliasesToExport = @()
    CmdletsToExport = @()

}

New-ModuleManifest @Manifest -Verbose
