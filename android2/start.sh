#!/bin/bash

# Start the first emulator
nohup emulator -avd avd1_setup &

# Start the second emulator
nohup emulator -avd avd2_setup &

echo "Both emulators are starting..."