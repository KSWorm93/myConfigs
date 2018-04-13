@ECHO OFF
TITLE Start DEV session
ECHO Opening programs. Hang tight..

ECHO.
ECHO Opening Visual Studio 2017
start C:\ProgramData\Microsoft\Windows\"Start Menu"\Programs\"Visual Studio 2017".lnk

ECHO.
ECHO Opening Microsfot SQL Server Management Studio 17
start C:\ProgramData\Microsoft\Windows\"Start Menu"\Programs\"Microsoft SQL Server Tools 17"\"Microsoft SQL Server Management Studio 17".lnk

ECHO.
ECHO Git Bash ~\source\repos
start C:\"Program Files"\Git\git-bash.exe --cd="C:\Users\kwo\source\repos"

ECHO.
ECHO DEV Session up and running