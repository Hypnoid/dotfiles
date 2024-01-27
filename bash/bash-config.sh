#! /usr/bin/env sh
#  This is an extension of the .bashrc file, where I customize bash. I separate the two just to keep things clean.

#?  Set up bash to use Starship
eval "$(starship init bash)"

#? Enable vi mode for bash input
set -o vi

	## Aliases ##

#?  Style the sudo prompt in the style of my starship.toml for consistency.
#alias sudo="sudo -p '$(printf "\e[31m\e[41m\e[97mPlease confirm with the superuser's password:\e[m\e[31m\e[m\n")'"		# English version
alias sudo="sudo -p '$(printf "\e[31m\e[41m\e[97mBitte bestätigen Sie mit dem Passwort des Superusers:\e[m\e[31m\e[m\n")'"	# German version

alias fp="flatpak"
alias gte="flatpak run org.gnome.TextEditor"

alias up=" \
	printf ' \e[1m\e[4mSystem Update:\e[0m\n' && read -s && \
	sudo dnf upgrade && sudo dnf autoremove && sudo dnf clean all ; \
	printf '\n \e[1m\e[4mFlatpak Update:\e[0m\n' && read -s && \
	flatpak update && flatpak remove --unused --delete-data \
	"
#alias upman=" \
#	printf ' \e[1m\e[4mUpdate Firefox Theme:\e[0m\n' && read -s && \
#	sh ~/Desktop/GitHub/dotfiles/update-scripts/update-firefox-theme.sh ; \
#	printf '\n \e[1m\e[4mUpdate MoreWaita:\e[0m\n' && read -s && \
#	sh ~/Desktop/GitHub/dotfiles/update-scripts/update-morewaita.sh ; \
#	printf '\n \e[1m\e[4mUpdate GTK3 Theme:\e[0m\n' && read -s && \
#	sh ~/Desktop/GitHub/dotfiles/update-scripts/update-gtk3-theme.sh ; \
#	"

alias mu="yt-dlp -x --embed-metadata --embed-thumbnail --ppa 'ThumbnailsConvertor+FFmpeg_o:-vf crop="in_h:in_h"' -o '%(track)s – %(artist)s'"

