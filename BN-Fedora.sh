#!/bin/bash
# Wine, Winetricks, and Battle.net for Fedora 29 Users
clear
echo Adding the WineHQ Repo:
sudo dnf config-manager --add-repo https://dl.winehq.org/wine-builds/fedora/29/winehq.repo
echo Running DNF Upgrade.. This may take a while:
sudo dnf upgrade -y
echo Installing Wine Packages:
sudo dnf install wine wine-core wine-common -y
echo Installing Winetricks:
sudo dnf install winetricks -y
echo Installing C Development Tools and Libraries:
sudo dnf groupinstall "C Development Tools and Libraries" -y
echo Installing Other Development Tools:
sudo dnf groupinstall "Development Tools" -y
echo Setting Windows Version to Windows 7:
winetricks win7
echo Instaling MS Core Fonts and VC Run 2015:
winetricks corefonts vcrun2015
echo Grabbing Battle.net from Blizzard:
wget -O BattleNetInstallation.exe "https://www.battle.net/download/getInstallerForGame?os=win&locale=enUS&version=LIVE&gameProgram=BATTLENET_APP"
echo Running Battle.Net Installer:
echo DO NOT CLOSE THIS TERMINAL
wine BattleNetInstallation.exe
