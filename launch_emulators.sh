#!/bin/bash

# Start the first emulator and output logs
nohup ~/Library/Android/sdk/emulator/emulator -avd avd1_setup > ~/emulator_output_avd1.log 2>&1 &
sleep 5  # Wait for the first emulator to start

# Start the second emulator and output logs
nohup ~/Library/Android/sdk/emulator/emulator -avd avd2_setup > ~/emulator_output_avd2.log 2>&1 &
sleep 5  # Wait for the second emulator to start

# Use AppleScript to save positions
osascript <<END
tell application "System Events"
    set avd1Position to {100, 100}  -- Change to where you want the first emulator
    set avd2Position to {600, 100}  -- Change to where you want the second emulator

    -- Set positions for each emulator
    tell process "Android Emulator"
        set position of first window to avd1Position
    end tell
    tell process "Android Emulator"
        set position of second window to avd2Position
    end tell
end tell
END

echo "Emulators launched. Please manually reposition them if necessary, and they will be saved on exit."
