@echo off
echo =================================
echo EXE Decoder
echo =================================
echo.
echo Select a decoding type:
echo 1. Decode from Base64
echo 2. Decode from Hex
echo 3. Decode from Binary
echo.
set /p choice=Enter your choice (1-3): 

set scriptName=
set extension=
if "%choice%"=="1" (
    set scriptName=DecodeFromBase64.ps1
    set extension=base64
)
if "%choice%"=="2" (
    set scriptName=DecodeFromHex.ps1
    set extension=hex
)
if "%choice%"=="3" (
    set scriptName=DecodeFromBinary.ps1
    set extension=binary
)

if "%scriptName%"=="" (
    echo Invalid choice, please try again.
    exit /b
)

set /p inputPath=Enter the path to your encoded file: 
for %%i in ("%inputPath%") do (
    set inputFileName=%%~ni
    set inputFileExt=%%~xi
)

set outputDir=%~dp0output
set outputPath=%outputDir%\%inputFileName%.exe

if not exist "%outputDir%" (
    mkdir "%outputDir%"
)

powershell.exe -File scripts\%scriptName% -inputPath "%inputPath%" -outputPath "%outputPath%"

echo Decoding complete!
echo Output saved to: %outputPath%
pause