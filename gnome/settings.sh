#!/bin/bash

# These settings are recommended for a nice working desktop
#
# Lets first enable some services

systemctl set-default graphical.target

systemctl enable gdm
systemctl enable accounts-daemon
systemctl enable update-gdk-pixbuf-loaders
systemctl enable update-gio-modules
systemctl enable update-gtk-immodules-2
systemctl enable update-gtk-immodules-3
systemctl enable update-mime-database
systemctl enable update-pango-querymodules
systemctl enable upower
systemctl disable systemd-networkd
systemctl disable systemd-resolved
systemctl enable NetworkManager
systemctl enable canberra-system-bootup
systemctl enable canberra-system-shutdown-reboot
systemctl enable canberra-system-shutdown
systemctl enable glib-compile-schemas

# Lets remove some packages that are not stable with gtk+3 and/or bluez5
removepkg blueman
removepkg hplip

