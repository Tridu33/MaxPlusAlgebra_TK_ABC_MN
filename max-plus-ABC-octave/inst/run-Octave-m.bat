@echo off

set OCT_HOME=C:\Dev\Octave400
set "PATH=%OCT_HOME%\bin;%PATH%"

set SCRIPTS_DIR=%~dp0
start octave-cli.exe --eval "cd(getenv('SCRIPTS_DIR')); data;pause(60); quit;"
