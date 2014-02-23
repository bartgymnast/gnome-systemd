usermod -a -G audio gdm &&
usermod -a -G video gdm


if [ ! -d /$ROOT/var/lib/gdm ]; then
        mkdir -p /$ROOT/var/lib/gdm
fi

usr/bin/chroot /$ROOT chown -R gdm:gdm /var/lib/gdm /var/cache/gdm /var/log/gdm
usr/bin/chroot /$ROOT chmod 0755 /var/lib/gdm /var/cache/gdm /var/log/gdm

usr/bin/chroot /$ROOT /usr/bin/dconf update

usr/bin/chroot /$ROOT chown -R root:gdm /var/run/gdm
usr/bin/chroot /$ROOT chmod 1777 /var/run/gdm

if [ ! -x /$ROOT/etc/rc.d/rc.messagebus ]; then
	usr/bin/chroot /$ROOT /etc/rc.d/rc.messagebus restart
fi
