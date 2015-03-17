@echo off
Setlocal EnableDelayedExpansion
::*****************************************
::* SET YOUR OSSEC SERVER IP ADDRESS HERE *
::*****************************************
SET OSSECSERVER=USM_SERVER_IP

::*****************************************
::* SET YOUR OSSEC INSTALL PACKAGE HERE   *
::*****************************************
SET SRC-DIR=\\APPSERVER\APP_LOCATION\
SET AGENTPACKAGE=ossec-agent-win32-2.8.exe



:::***************************** DO NOT EDIT PASS THIS LINE ***************************************************

::*****************************************
::*          SET SERVER VARIABLES         *
::*****************************************
IF EXIST "C:\Program Files (x86)" (SET OSSECPATH="C:\Program Files (x86)\ossec-agent") ELSE (SET OSSECPATH="C:\Program Files\ossec-agent")


::*****************************************
::*     VERIFYING EXISTING AGENTS         *
::*****************************************
IF EXIST %OSSECPATH%\ossec-agent.exe GOTO:END ELSE GOTO:OSSEC_SETUP


:OSSEC_SETUP
::*****************************************
::*          COPY TEMP FILES              *
::*****************************************
MD %SYSTEMDRIVE%\OSSEC-TEMP
COPY %SRC-DIR%*.* %SYSTEMDRIVE%\OSSEC-TEMP
SET SCRIPTDIR=%SYSTEMDRIVE%\OSSEC-TEMP\

::*****************************************
::*          INSTALL OSSEC AGENT          *
::*****************************************
START /WAIT %SCRIPTDIR%%AGENTPACKAGE% /S


::******************************************************************************************
::* FIND COMPUTERNAME IN  MASTER KEYFILE THEN GENERATE SPECIFIC AGENT KEYFILE IN OSSECPATH *
::******************************************************************************************

SET KEYSFILE="%SCRIPTDIR%CLIENT.LIST"
SET KEYFILE="%SCRIPTDIR%CLIENT.KEYS"

findstr /I /C:"%COMPUTERNAME%" %KEYSFILE% > %KEYFILE%
COPY %KEYFILE% %OSSECPATH%



::******************************************************************
::* CONFIGURE ossec.conf FILE BEFORE RESTARTING OSSEC HIDS SERVICE *
::******************************************************************

ECHO ^<ossec_config^> >> %OSSECPATH%\ossec.conf
ECHO ^<client^> >> %OSSECPATH%\ossec.conf
ECHO ^<server-ip^>%OSSECSERVER%^</server-ip^> >> %OSSECPATH%\ossec.conf
ECHO ^</client^> >> %OSSECPATH%\ossec.conf
ECHO ^</ossec_config^> >> %OSSECPATH%\ossec.conf

::**********************************************
::* Restart Ossec Service and begin monitoring *
::**********************************************
NET STOP OSSECSVC
NET START OSSECSVC

RD %SCRIPTDIR% /S /Q

:END
EXIT