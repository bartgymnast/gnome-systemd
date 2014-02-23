if [ -x bin/chroot ]; then
	bin/chroot /$ROOT /usr/sbin/cracklib-format /usr/share/cracklib/* | /usr/sbin/cracklib-packer 2>/dev/null 1>/dev/null
fi
