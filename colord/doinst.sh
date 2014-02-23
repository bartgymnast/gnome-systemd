# Fix permissions
chroot . /bin/chown colord.colord /var/lib/colord
chroot . /bin/chown colord.colord /var/lib/colord/icc
