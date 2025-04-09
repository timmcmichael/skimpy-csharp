@echo off
@REM Define output directory
SET OUTPUT_DIR=output-test
SET CSS_DIR=css

@REM Remove old output directory if it exists
if exist %OUTPUT_DIR% rd /s /q %OUTPUT_DIR%

@REM Copy images to output
setlocal enabledelayedexpansion

:: Loop through chapters 00 to 12
for /l %%i in (0,1,12) do (
    set "CHAPTER=0%%i"
    if %%i GEQ 10 set "CHAPTER=%%i"

    set "SRC_DIR=chapter!CHAPTER!\images"
    set "DEST_DIR=%OUTPUT_DIR%\chapter!CHAPTER!\images"

    if exist "!SRC_DIR!\" (
        mkdir "!DEST_DIR!" 2>nul
        xcopy /E /I "!SRC_DIR!" "!DEST_DIR!" >nul
    )
)

endlocal

xcopy /E /I /Y images %OUTPUT_DIR%\images


@REM Copy CSS directory to output
if exist %CSS_DIR%\dark.css (
    xcopy /E /I /Y %CSS_DIR% %OUTPUT_DIR%\%CSS_DIR%
)

REM Run AsciiDoctor multipage
asciidoctor-multipage -D %OUTPUT_DIR% -r \Ruby33-x64\lib\ruby\gems\3.3.0\gems\asciidoctor-diagram-2.3.1\lib\asciidoctor-diagram.rb -a source-highlighter=pygments -a pygments-style=monokai -b multipage_html5 index.adoc


REM Pause to see errors (optional)
pause
