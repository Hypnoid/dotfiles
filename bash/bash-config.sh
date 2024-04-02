#! /usr/bin/env sh
#  This is an extension of the .bashrc file, where I customize bash. I separate the two just to keep things clean.

#?  Set up bash to use Starship
#eval "$(starship init bash)"

#? Enable vi mode for bash input
set -o vi

	## Aliases ##

#?  Style the sudo prompt in the style of my starship.toml for consistency.
#alias sudo="sudo -p '$(printf "\e[31m\e[41m\e[97mPlease confirm with the superuser's password:\e[m\e[31m\e[m\n")'"		# English version
#alias sudo="sudo -p '$(printf "\e[31m\e[41m\e[97mBitte bestätigen Sie mit dem Passwort des Superusers:\e[m\e[31m\e[m\n")'"	# German version

alias fp="flatpak"
alias open="gio open"
alias trash="gio trash"
alias la="ls -lah"

alias upgrade=" \
	printf '    \e[1m\e[4mAPT Update:\e[0m\n' && read -s && \
	sudo apt update ; \
	printf '\n    \e[1m\e[4mAPT Upgrade:\e[0m\n' && read -s	&& \
	sudo apt upgrade ; \
	printf '\n    \e[1m\e[4mFlatpak Upgrade:\e[0m\n' && read -s	&& \
	flatpak update ; \
	printf '\n    \e[1m\e[4mauto-cpufreq Upgrade:\e[0m\n' && read -s && \
	sudo auto-cpufreq --update \
	" && alias up="upgrade"

alias clean=" \
	printf '    \e[1m\e[4mClean APT:\e[0m\n' && read -s && \
	sudo apt autoremove --purge && sudo apt autoclean && sudo apt clean ; \
	printf '\n    \e[1m\e[4mClean Flatpak:\e[0m' && read -s && \
	flatpak remove --unused --delete-data \
	"

alias mu="yt-dlp -x --embed-metadata --embed-thumbnail --ppa 'ThumbnailsConvertor+FFmpeg_o:-vf crop="in_h:in_h"' -o '%(track)s – %(artist)s'"

