#!/usr/bin/env sh
#

#?
coprRepo="https://copr.fedorainfracloud.org/coprs/atim/starship"
#?
packNam="starship"
#?
osVer="$(cat /usr/lib/os-release | grep 'VERSION_ID' | cut -c 12-)"
#?
osArch="$(uname -m)"
#?
insVer="$(starship --version | sed -n 1p | cut -c 10-)"
#?
latBuild="$(wget $coprRepo -qO - | grep 'class="list-group-item"' | cut -c 45-51)"
#?
latVer="$(wget $coprRepo/build/$latBuild/ -qO - | sed -n 299p | cut -c 17-)"


if [[ $insVer -lt $latVer ]] ; then
	#wget https://download.$(printf $coprRepo | cut -c 9-)/fedora-$osVer-$osArch/0$latBuild-$packNam/$packNam-$latVer.fc$osVer.$osArch.rpm -qO $packNam.rpm
	printf "ja"
else
	printf "nein"
fi

