@ECHO OFF
TITLE Admin Work Session

ECHO Starting Mail Session
call MAIL.bat

ECHO Starting VS-Admin
call VS-Admin.bat

ECHO.
ECHO Opening Microsfot SQL Server Management Studio 17
start C:\ProgramData\Microsoft\Windows\"Start Menu"\Programs\"Microsoft SQL Server Tools 17"\"Microsoft SQL Server Management Studio 17".lnk

ECHO.
ECHO Git Bash ~\source\repos
start C:\"Program Files"\Git\git-bash.exe --cd="C:\Users\kwo\source\repos"

ECHO.
ECHO WORK Session are up and running