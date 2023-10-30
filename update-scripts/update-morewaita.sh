#!/usr/bin/env sh
# This script installs/updates the Morewaita icon theme

repoUrl="https://github.com/somepaulo/MoreWaita.git"
iconsDir=~/.icons
repoName="MoreWaita"

	## Installation ##

#?
mkdir -p $iconsDir
#? Remove current MoreWaita install, if installed
sudo rm -r $iconsDir/$repoName 2>/dev/null
#?
cd $iconsDir
#? Clone the theme's git repo
git clone -q https://github.com/somepaulo/MoreWaita.git
#? 
gtk-update-icon-cache -f -t $repoName && xdg-desktop-menu forceupdate

