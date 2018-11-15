@ECHO OFF
TITLE Get Help File
ECHO:Type a command to get the help file.
SET /P getHelp="Command: "
%getHelp% /? >>"C:\Users\%USERNAME%\Documents\%getHelp%Help.txt"
ECHO:Go to your Documents folder and look for "%getHelp%Help.txt".
PAUSE
EXIT
