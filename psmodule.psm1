function urmom{
    $asciiArt = @"
                   .oodMMMMMMMMMMMMM
       ..oodMMM  MMMMMMMMMMMMMMMMMMM
 oodMMMMMMMMMMM  MMMMMMMMMMMMMMMMMMM
 MMMMMMMMMMMMMM  MMMMMMMMMMMMMMMMMMM
 MMMMMMMMMMMMMM  MMMMMMMMMMMMMMMMMMM
 MMMMMMMMMMMMMM  MMMMMMMMMMMMMMMMMMM
 MMMMMMMMMMMMMM  MMMMMMMMMMMMMMMMMMM
 MMMMMMMMMMMMMM  MMMMMMMMMMMMMMMMMMM
 
 MMMMMMMMMMMMMM  MMMMMMMMMMMMMMMMMMM
 MMMMMMMMMMMMMM  MMMMMMMMMMMMMMMMMMM
 MMMMMMMMMMMMMM  MMMMMMMMMMMMMMMMMMM
 MMMMMMMMMMMMMM  MMMMMMMMMMMMMMMMMMM
 MMMMMMMMMMMMMM  MMMMMMMMMMMMMMMMMMM
 `^^^^^^MMMMMMM  MMMMMMMMMMMMMMMMMMM
       ````^^^^  ^^MMMMMMMMMMMMMMMMM
                      ````^^^^^^MMMM
"@ 
Write-Host $asciiArt -ForegroundColor Blue
    $ComputerDetails = Get-ComputerInfo | Select-Object OSName, OSVersion, OsTotalVisibleMemorySize, CsProcessors, CsUserName
    Write-Host "Operating System: $($ComputerDetails.OSName)" -ForegroundColor DarkMagenta
    Write-Host "OS Version: $($ComputerDetails.OSVersion)" -ForegroundColor DarkMagenta
    Write-Host "Physical Memory: $($ComputerDetails.OsTotalVisibleMemorySize / 1GB) GB" -ForegroundColor DarkMagenta
    Write-Host "CPU Processor: $($ComputerDetails.CsProcessors)" -ForegroundColor DarkMagenta
    Write-Host "User: $($ComputerDetails.CsUserName)" -ForegroundColor DarkMagenta
}
urmom
#Export-ModuleMember -Function urmom
