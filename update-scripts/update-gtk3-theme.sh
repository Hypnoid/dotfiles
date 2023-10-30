#!/usr/bin/env sh
# This script updates the gtk3 theme of your choice.

	## Specifictaion ##

#? Specify the location of your gnome themes folder
themesDir=~/.themes
#? Specify the git repo of your wanted theme
repoUrl="https://github.com/lassekongo83/adw-gtk3"
#? Find out how the archive of the latest release in the git repo is called
latVer="$(wget $repoUrl/releases/latest -qO - | grep '<title>' | cut -c 27-30)"
file="adw-gtk3${latVer//./-}.tar.xz"

	## Intallation ##

#? Download the latest archive from the git repo
wget $repoUrl/releases/latest/download/$file -qO $file
#? Unyip the archive into the themes folder
tar -xf $file -C $themesDir
#? Remove the now useless archive
rm $file

