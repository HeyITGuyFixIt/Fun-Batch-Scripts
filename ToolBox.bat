@ECHO OFF
CD /D C:\Windows\System32
TITLE Fix Windows
CLS
:HOME
CLS
ECHO:Windows Command Prompt Recovery Toolbox
ECHO:---------------------------------------------------------------
ECHO:Select a tool's number (an "H" after the # shows the help file)
ECHO:---------------------------------------------------------------
ECHO:1) Windows Resource Checker (SFC /SCANNOW)
ECHO:---------------------------------------------------------------
ECHO:2) Deployment Image Servicing and Management tool (DISM /Online /Cleanup-Image /RestoreHealth)
ECHO:---------------------------------------------------------------
ECHO:3) Check Disk (CHKDSK /R C:)
ECHO:---------------------------------------------------------------
ECHO:4) Bcdboot (BCDBOOT /S C: /M {226b42c4-d5de-11e7-9467-002564529aa7})
ECHO:---------------------------------------------------------------
ECHO:5) ____
ECHO:---------------------------------------------------------------
ECHO:6) ____
ECHO:---------------------------------------------------------------
ECHO:7) ____
ECHO:---------------------------------------------------------------
ECHO:8) ____
ECHO:---------------------------------------------------------------
ECHO:9) ____
ECHO:---------------------------------------------------------------
ECHO:0) Exit Recovery Toolbox
ECHO:---------------------------------------------------------------
ECHO:Note: This script requires administrative privelages!
SET /P "CHO=#"
IF /I %CHO%==1 GOTO SFC
IF /I %CHO%==1H SFC /?
IF /I %CHO%==2 GOTO DISM
IF /I %CHO%==2H DISM /?
IF /I %CHO%==3 GOTO CHKDSK
IF /I %CHO%==3H CHKDSK /?
IF /I %CHO%==4 GOTO BCDBOOT
IF /I %CHO%==4H BCDBOOT /?
IF /I %CHO%==5 GOTO HOME
IF /I %CHO%==5H GOTO HOME
IF /I %CHO%==6 GOTO HOME
IF /I %CHO%==6H GOTO HOME
IF /I %CHO%==7 GOTO HOME
IF /I %CHO%==7H GOTO HOME
IF /I %CHO%==8 GOTO HOME
IF /I %CHO%==8H GOTO HOME
IF /I %CHO%==9 GOTO HOME
IF /I %CHO%==9H GOTO HOME
IF /I %CHO%==0 GOTO EXIT
IF /I %CHO%==0H GOTO EXIT
GOTO HOME
:SFC
CLS
SFC /SCANNOW
PAUSE
GOTO HOME
:DISM
CLS
DISM /Online /Cleanup-Image /RestoreHealth
PAUSE
GOTO HOME
:CHKDSK
CHKDSK /R C:
:BCDBOOT
BCDBOOT /S C: /M {226b42c4-d5de-11e7-9467-002564529aa7}
:EXIT
CLS
ECHO:Thanks for using Windows Command Prompt Recovery Toolbox!