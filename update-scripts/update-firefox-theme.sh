#!/usr/bin/env sh
# This small script updates any firefox theme given in the specifications.

	## Specifications ##

#? Specify the theme/chrome folder
chromeDir=~/.var/app/io.gitlab.librewolf-community/.librewolf/chrome/
#? Specify the git repo of the wanted theme
themeUrl="https://github.com/rafaelmardojai/firefox-gnome-theme.git"
#? Specify the git repo's name of the wanted theme
newTheme="firefox-gnome-theme"
#? Specify the git repo's name of the already installed theme, if installed
oldTheme="firefox-gnome-theme"

	## Installation ##

#? Change directory to the themes/chrome folder
cd $chromeDir
#? Move the user.js (if installed) for safe keeping
mv -vf $oldTheme/configuration/user.js user.js
#? Remove the old/outdated theme (if installed)
sudo rm -r $oldTheme/ userChrome.css userContent.css

#? Install the new/updated theme
git clone $themeUrl
[[ -s userChrome.css ]] || echo >> userChrome.css
[[ -s userContent.css ]] || echo >> userContent.css
sed -i '1s/^/@import "firefox-gnome-theme\/userChrome.css";\n/' userChrome.css
sed -i '1s/^/@import "firefox-gnome-theme\/userContent.css";\n/' userContent.css

#? Move the user.js back
mv -vf user.js firefox-gnome-theme/configuration/

