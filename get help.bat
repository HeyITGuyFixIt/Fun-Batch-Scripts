@ECHO OFF
TITLE Get Help File
ECHO:Type a command to get the help file.
SET /P getHelp="Command: "
%getHelp% /? >>"C:\Users\%USERNAME%\Desktop\%getHelp%Help.txt"
ECHO:Go to your Desktop folder and look for "%getHelp%Help.txt".
PAUSE
EXIT