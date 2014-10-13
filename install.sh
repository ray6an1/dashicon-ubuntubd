#!/bin/bash

echo "Checking for administrator privileges"
sudo -v
echo "Checking for Unity environment"
if [[ -f /usr/share/unity/icons/launcher_bfb.png ]]
then
    echo "Backing up launcher_bfb.png"
    mv /usr/share/unity/icons/launcher_bfb.png /usr/share/unity/icons/launcher_bfb.png.bak 2> /dev/null
    echo "Downloading launcher_bfb.png"
    wget -qO /usr/share/unity/icons/launcher_bfb.png https://github.com/Raihan-Ali/dashicon-ubuntubd/raw/master/launcher_bfb.png
    echo "Exiting successfully"
    exit 0
else
    echo "/usr/share/unity/icons/launcher_bfb.png does not exist"
    echo "Exiting unsuccessfully"
    exit 1
fi