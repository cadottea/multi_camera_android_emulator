# Multi-Camera Android Emulator Automation Script

## Overview

The Multi-Camera Android Emulator Automation Script is an AppleScript designed to automate the launching and closing of multiple Android emulators for testing camera-related applications. This script starts two emulator instances when run and provides a mechanism to close them when the application is quit. It also includes basic error handling and logging.

## Features

- Automatically launches two Android emulator instances.
- Logs output for each emulator to separate log files.
- Handles errors during emulator startup and closure with user-friendly dialog messages.
- Keeps the application running in the background until manually quit.

## Future Features

In upcoming releases, I plan to enhance the **Multi-Camera Emulator Automation Script** with the following features:

- A way to set emulator positions within your screen - they currently default into the upper left and no amount of tweaking the Apple Script code or searching through emulator options was able to change this.
- A way to pair the windows so that they can be moved together as a unit.
- Addition of custom machine learning interface to detect people and faces or other objects of interest like cars.
- Have the emulator screen pop to the front if something unusual is happening e.g. someone is in the frame for longer than 10 seconds or a car pulls up unusually close.
- Add more windows that introduce a time delay to avoid needing to rewind the video.

## Installation

Ensure you have the following prerequisites:

- macOS with AppleScript support.
- Android SDK installed, specifically the Android Emulator.
- Two Android Virtual Devices (AVDs) created and configured in your Android SDK.

### Steps to Install

1. **Clone or Download**: Get the script file from the repository.
2. **Setup AVDs**: Ensure that the AVDs are created and configured in your Android SDK.
3. **Place Script**: Save the AppleScript file in a convenient location on your Mac.

## Usage

1. **Run the Script**: Open the script in the Script Editor or your preferred AppleScript environment.
2. **Start Emulators**: Execute the script. It will automatically launch both emulator instances and log the output to:
   - `~/emulator_output_avd1.log`
   - `~/emulator_output_avd2.log`
3. **Close Emulators**: To quit, simply close the script window, and the emulators will be automatically closed.

## Code Explanation

- The script begins execution in the `on run` handler, which immediately calls the function to start the emulators.
- The script logs the output of each emulator to separate log files.
- Error handling is implemented to display relevant messages if any issues arise.

## Error Handling

If any issues arise during the launch or closure of the emulators, a dialog box will appear with an error message detailing the problem.

## Notes

- Ensure the paths to your Android SDK and emulator are correct.
- Customize the AVD names in the script if your configuration differs.
- The dialog for confirming the closure of the emulator instances is commented out, but you can uncomment it if needed.

## Contact

For questions or issues regarding this script, please contact flatmosquito@gmail.com.