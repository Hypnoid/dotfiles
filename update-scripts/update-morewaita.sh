#!/usr/bin/env sh
# This script installs/updates the Morewaita icon theme

	## Installation

#? Clone the theme's git repo
git clone https://github.com/somepaulo/MoreWaita.git
#? Run the theme's installer
source MoreWaita/install.sh
#? Remove the rest of the uneeded repo
sudo rm -r MoreWaita

