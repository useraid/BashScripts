# Bash Scripts

## Scripts List

- [Arch Install Script](https://github.com/useraid/Debloat-Scripts/blob/main/README.md#archinstall-script)
- [Ubuntu 20.04 Debloat Script](https://github.com/useraid/Debloat-Scripts/blob/main/README.md#ubuntu-2004-debloat-script)
- [Realtek rtw89 Installer](https://github.com/useraid/Debloat-Scripts/blob/main/README.md#realtek-rtw89-installer)
- [gcc Output Auto-Deleter](https://github.com/useraid/Debloat-Scripts/blob/main/README.md#gcc-output-auto-deleter)


## Arch Install Script 

The Arch install script is made to automate the processes that I am comfortable in automating and leaving the others to the user. In the current state the script is extremely barebones with no options or outputs.
I plan to update it in the future to make it more user friendly and provide more user control without needing to poke around in the script.

### How to use the script

Use 'curl' to download the script.
```
curl -O https://raw.githubusercontent.com/useraid/BashScripts/main/ArchInstall.sh
```
Make it executable.
```
chmod +x ArchInstall.sh
```
Run the Script.
```
./ArchInstall.sh
```

## Ubuntu 20.04 Debloat Script

Ubuntu 20.04 Debloat

### How to use the script

Use 'curl' to download the script.
```
curl -O https://raw.githubusercontent.com/useraid/BashScripts/main/DebloatUpdate.sh
```
Make it executable.
```
chmod +x DebloatUpdate.sh
```
Run the Script.
```
./DebloatUpdate.sh
```

## Realtek rtw89 Installer

Install Script for rtw89 wifi modules.
Note - You need to enroll the generated keys and enter the correct password for the module to load correctly.

### How to use the script

Use 'curl' to download the script.
```
curl -O https://raw.githubusercontent.com/useraid/BashScripts/main/rtw89Installer.sh
```
Make it executable.
```
chmod +x rtw89Installer.sh
```
Run the Script.
```
./rtw89Installer.sh
```

## gcc Output Auto-Deleter

This allows the user to run the C++ program and deletes the complied executable after execution.

**You can [edit the code runner settings.json](https://gist.github.com/useraid/8dda6404cb84a346c1d4cb35c65f7065) to accomplish the same and is the recommended method.**

### How to use the script

Use 'curl' to download the script.
```
curl -O https://raw.githubusercontent.com/useraid/BashScripts/main/gad.sh
```
Make it executable.
```
chmod +x gad.sh
```
To use the script, use this syntax.
```
./gad.sh <filename>
```

### Scripts I am working on

-The in-progress scripts will be added here-
