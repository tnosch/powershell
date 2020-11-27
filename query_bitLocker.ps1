### This powershell is used to Query BitLocker status on remote computers using manage-bde ###
### @ThiagoNosch - tnosch@hotmail.com ###

# bitlocker status
$TextFilePath = Read-Host "What is the path to the text file?"
If (Test-Path $TextFilePath){
    $ComputersArray = Get-Content $TextFilePath
    $ComputerStatusCol = @()
ForEach ($Computer in $ComputersArray) {
        If (Test-Connection $Computer -Count 1){
            $ComputerStatus = manage-bde -status -cn "$Computer" 
            $ComputerStatusCol += $ComputerStatus
        } Else {
            Write-Host("$Computer appears to be offline.")
        }
    }
    $ComputerStatusCol | Out-File -filepath "c:\utils\Bitlocker-Status.txt" -append -force
} Else {
    Write-Error "The text file was not found, check the path."
}
