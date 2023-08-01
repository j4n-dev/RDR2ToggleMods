@echo off
setlocal enabledelayedexpansion

REM Check if the "Red Dead Redemption 2" folder exists
REM Überprüfe, ob der Ordner "Red Dead Redemption 2" vorhanden ist
if not exist "Red Dead Redemption 2" (
    echo Error: The "Red Dead Redemption 2" folder does not exist.
    echo Make sure this script is placed in the correct directory.
    pause
    exit /b
)

REM Check if the "rdr2mods" folder exists
REM Überprüfe, ob der Ordner "rdr2mods" vorhanden ist
if exist "rdr2mods" (
    set "targetFolder=rdr2mods"
    set "sourceFolder=rdr2orig"
) else (
    REM Check if the "rdr2orig" folder exists
    REM Überprüfe, ob der Ordner "rdr2orig" vorhanden ist
    if exist "rdr2orig" (
        set "targetFolder=rdr2orig"
        set "sourceFolder=rdr2mods"
    ) else (
        echo Error: Could not find either "rdr2mods" or "rdr2orig" folder.
        echo Make sure your folder structure is correct and try again.
        pause
        exit /b
    )
)

REM Confirm the user's decision
REM Bestätige die Entscheidung des Benutzers
echo.
echo You are currently set to play Red Dead Redemption 2 with mods: %targetFolder%.
echo.
set /p "confirmation=Do you want to switch? (Y/N): "

REM Convert the user's input to uppercase
REM Konvertiere die Eingabe des Benutzers in Großbuchstaben
set "confirmation=%confirmation:~0,1%"
if /i not "%confirmation%"=="Y" (
    echo.
    echo No changes were made. Happy gaming! 🤠🎮
    pause
    exit /b
)

REM Rename folders to toggle between modded and unmodded gameplay
REM Umbenennen der Ordner, um zwischen Mod- und Nicht-Mod-Spiel zu wechseln
echo.
ren "Red Dead Redemption 2" "temp_rename_folder"
ren "%targetFolder%" "Red Dead Redemption 2"
ren "%sourceFolder%" "%targetFolder%"
ren "temp_rename_folder" "%sourceFolder%"

echo.
echo The switch was successful. You can now launch Red Dead Redemption 2 with or without mods.
echo Happy gaming! 🤠🎮
pause
