# Prompt the user to enter a directory path $directoryPath = Read-Host -Prompt "Please enter the full path of the directory you want to navigate to"



# Prompt the user to enter a directory path
$directoryPath = Read-Host -Prompt "Please enter the full path of the directory you want to navigate to"

# Check if the directory exists
if (Test-Path -Path $directoryPath -PathType Container) {
    # Navigate to the directory
    Set-Location -Path $directoryPath
    Write-Output "Successfully navigated to: $directoryPath"

    # Open the directory in File Explorer
    Start-Process -FilePath explorer.exe -ArgumentList $directoryPath

    # Open the directory in PowerShell
    Start-Process -FilePath powershell.exe -ArgumentList "Start-Process powershell.exe -ArgumentList '-NoExit', '-Command', 'cd', '$directoryPath'"

    # Open the directory in Command Prompt
    Start-Process -FilePath cmd.exe -ArgumentList "/K cd $directoryPath"
} else {
    Write-Output "The specified directory does not exist: $directoryPath"
}
