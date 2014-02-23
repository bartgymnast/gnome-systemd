if [ -x usr/bin/gtk-update-icon-cache ]; then
  chroot . /usr/bin/gtk-update-icon-cache -f -t /usr/share/icons/gnome 1> /dev/null 2> /dev/null
fi
