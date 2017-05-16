@ECHO off

CHCP 65001 > NUL
CD /d "%~dp0"

REM SETLOCAL ENABLEEXTENSIONS
REM SET KEY_NAME="HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced"
REM SET VALUE_NAME=HideFileExt

REM FOR /F "usebackq tokens=1-3" %%A IN (`REG QUERY %KEY_NAME% /v %VALUE_NAME% 2^>nul`) DO (
REM     SET ValueName=%%A
REM     SET ValueType=%%B
REM     SET ValueValue=%%C
REM )

REM IF x%ValueValue:0x0=%==x%ValueValue% (
REM     ECHO Unhiding file extensions...
REM     START CMD /c REG ADD HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced /v HideFileExt /t REG_DWORD /d 0 /f
REM )
REM ENDLOCAL


REM IF EXIST %SYSTEMROOT%\py.exe (
REM     CMD /k %SYSTEMROOT%\py.exe run.py
REM     EXIT
REM )

REM python --version > NUL 2>&1
REM IF %ERRORLEVEL% NEQ 0 GOTO nopython

CMD /k python run.py
GOTO end

:nopython
ECHO ERROR: Python has either not been installed or not added to your PATH.

:end
PAUSE
