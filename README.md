# Red Dead Redemption 2 Mod Toggle Script

This batch script allows you to easily switch between playing Red Dead Redemption 2 with or without mods. It renames the game folder if certain folder names are present.

## The "Problem"

You might enjoy playing Red Dead Redemption 2 both in its online mode and its singleplayer mode with mods. However, manually switching between these modes by renaming folders can be annoying. This script aims to automate the process and make it effortless to toggle between modded and unmodded gameplay.

## Folder Structure

Before using the script, ensure your folder structure looks like one of the following two cases:

### Case 1: Playing with Mods

 - YourGameFolder
	 - rdr2orig (Folder containing the game files without mods)
	 - Red Dead Redemption 2 (Folder recognized by the Rockstar Games launcher, contains the game files with mods)
	 - rdr2_toggle_mods.bat (The Batch script)

### Case 2: Playing without Mods

 - YourGameFolder
	 - rdr2mods (Folder containing the game files with mods)
	 - Red Dead Redemption 2 (Folder recognized by the Rockstar Games launcher, contains the game files without mods)
	 - rdr2_toggle_mods.bat (The Batch script)

## How It Works

1. If you are starting from scratch, first make a copy of the original game folder ("Red Dead Redemption 2") located inside *YourGameFolder* (Normally C:/Program Files/Rockstar Games/Red Dead Redeption 2).
2. Rename the copied folder to either `rdr2mods` or `rdr2orig`, depending on whether you want to play with or without mods.

## Usage

1. Copy the batch script (`rdr2_toggle_mods.bat`) into the root directory of your *YourGameFolder*.
2. Double-click the script to execute it.
3. The script will automatically determine if mods are enabled or disabled and display a message accordingly.
4. Red Dead Redemption 2 can now be launched with or without mods.

## Important Note

Please make sure to back up your game files before using this script to avoid any accidental data loss.

**Happy gaming!** 🤠🎮
