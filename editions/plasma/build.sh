#!/bin/bash

set -ouex pipefail

### Install packages
dnf5 install -y plasma-desktop sddm sddm-kcm flatpak-kcm kde-connect sddm-wayland-plasma plasma-workspace plasma-workspace-wallpapers plasma-workspace-wayland powerdevil bluedevil ark dolphin kate gwenview okular breeze-icon-theme kde-gtk-config kdialog kdeplasma-addons kdegraphics-thumbnailers kio-admin kio-gdrive konsole plasma-breeze plasma-nm plasma-nm-l2tp plasma-nm-openconnect plasma-nm-openswan plasma-nm-openvpn plasma-nm-pptp plasma-nm-vpnc plasma-pa plasma-disks plasma-drkonqi polkit-kde spectacle xwaylandvideobridge plasma-welcome kate kinfocenter

### Remove packages
dnf5 remove -y firefox firefox-langpacks

systemctl set-default graphical.target
systemctl enable sddm-theme-fix.mount
