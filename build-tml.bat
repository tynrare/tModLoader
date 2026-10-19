@echo off
REM build-tml.bat | version 1.0.2 | last updated 2026-10-18
REM Purpose: regenerate src from patches, then build tModLoader Debug.
REM Flow:
REM   1. cd to the script directory
REM   2. fail if src\tModLoader\Terraria\Terraria.csproj is missing
REM   3. unless first arg is nopatch, run setup-cli.bat regen-source -f
REM   4. dotnet build Terraria.csproj -c Debug and print the dll path
REM agent: haiku | 2026-10-18 | Call setup-cli via script directory path | v 1.0.2 | 949677
cd /d "%~dp0"

if exist "src\tModLoader\Terraria\Terraria.csproj" goto check_patch
echo src not generated; run setup-cli.bat setup first
exit /b 1

:check_patch
if /i "%~1"=="nopatch" goto build
call "%~dp0setup-cli.bat" regen-source -f
if not errorlevel 1 goto build
echo regen-source failed
exit /b 1

:build
dotnet build src\tModLoader\Terraria\Terraria.csproj -c Debug
if not errorlevel 1 goto build_ok
echo build failed
exit /b 1

:build_ok
echo Built: src\tModLoader\Terraria\bin\Debug\net10.0\tModLoader.dll
exit /b 0
