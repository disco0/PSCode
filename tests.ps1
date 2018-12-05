Import-Module Pester

$script:moduleRoot = Split-Path -Path $MyInvocation.MyCommand.Path

# Dot source functions
"$script:moduleRoot\functions\*.ps1" | Resolve-Path | %{. $_.ProviderPath}
write-host 'help!'
Invoke-Pester tests
