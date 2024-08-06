@echo off
echo =================================
echo EXE Converter
echo =================================
echo.
echo Select an encoding type:
echo 1. Convert to Base64
echo 2. Convert to Hex
echo 3. Convert to Binary
echo.
set /p choice=Enter your choice (1-3): 

set scriptName=
set extension=
if "%choice%"=="1" (
    set scriptName=ConvertToBase64.ps1
    set extension=base64
)
if "%choice%"=="2" (
    set scriptName=ConvertToHex.ps1
    set extension=hex
)
if "%choice%"=="3" (
    set scriptName=ConvertToBinary.ps1
    set extension=binary
)

if "%scriptName%"=="" (
    echo Invalid choice, please try again.
    exit /b
)

set /p inputPath=Enter the path to your .exe file: 
for %%i in ("%inputPath%") do (
    set inputFileName=%%~ni
    set inputFileExt=%%~xi
)

set outputDir=%~dp0output
set outputPath=%outputDir%\%inputFileName%_%extension%.txt

if not exist "%outputDir%" (
    mkdir "%outputDir%"
)

powershell.exe -File scripts\%scriptName% -inputPath "%inputPath%" -outputPath "%outputPath%"

echo Conversion complete!
echo Output saved to: %outputPath%
pause