@REM Copyright (c) Microsoft. All rights reserved.
@REM Licensed under the MIT license. See LICENSE file in the project root for full license information.

setlocal

set build-root=%~dp0..\..
rem // resolve to fully qualified path
for %%i in ("%build-root%") do set build-root=%%~fi
echo %build-root%
REM -- C --
rem D:\jenkins\workspace\arduino_huzzah_pal\sdk\build_all\arduino_cc
cd %build-root%\build_all\arduino_cc
call build.cmd %*
if errorlevel 1 goto :eof
cd %build-root%
