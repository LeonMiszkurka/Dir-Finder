@echo off

:: -------------------- If the actual script isn't found, display an error --------------------
if not exist "Dir Finder.ps1" (
    echo Error main.ps1 is not in this DIR
	echo Press any key to exit...
	pause > nul
)
:: --------------------------------------------------------------------------------------------

:: Sets the execution policy for the current process to allow the script to run, then runs it.
powershell -NoProfile -ExecutionPolicy Bypass -File "Dir Finder.ps1"

:: Alternatively, you could run this command yourself in a powershell window before running the script:   		Set-ExecutionPolicy -ExecutionPolicy Bypass -Scope Process
:: Which also would just allow scripts for that current PowerShell session, then you can run the script with: 	.\Super_God_Mode.ps1
pause