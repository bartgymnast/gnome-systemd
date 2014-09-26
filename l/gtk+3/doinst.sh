chroot . rm -f /usr/share/icons/*/icon-theme.cache 1> /dev/null 2> /dev/null

# Run this if we are on an installed system.  Otherwise it will be
# handled on first boot.
if [ -x /usr/bin/update-gtk-immodules-3.0 ]; then
  /usr/bin/update-gtk-immodules-3.0
fi

# In case this is the first run installing the standalone gdk-pixbuf,
# we will run this a second time to fix machines that will not reboot.
chroot . /usr/bin/update-gdk-pixbuf-loaders 1> /dev/null 2> /dev/null
