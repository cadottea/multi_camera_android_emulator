import subprocess

alias_command = "alias start_emulator='nohup ~/Library/Android/sdk/emulator/emulator -avd Medium_Phone_API_36 > ~/emulator_output.log 2>&1 &'"
zshrc_path = "/Users/thor/.zshrc"

# Check if the alias already exists
try:
    with open(zshrc_path, 'r') as file:
        content = file.read()
        if "start_emulator" in content:
            print("Alias 'start_emulator' already exists in ~/.zshrc")
        else:
            # Append the alias to .zshrc
            with open(zshrc_path, 'a') as file:
                file.write(f"\n{alias_command}\n")
                print("Alias 'start_emulator' added to ~/.zshrc")
except FileNotFoundError:
    print(f"File not found: {zshrc_path}")