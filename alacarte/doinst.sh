#!/bin/sh
# Figure out our root directory
ROOTDIR=\$(pwd)
unset CHROOT
if test "\${ROOTDIR}" != "/"; then
  CHROOT="chroot \${ROOTDIR} "
  ROOTDIR="\${ROOTDIR}/"
fi
if [ -x usr/bin/gtk-update-icon-cache ]; then
  \${CHROOT} /usr/bin/gtk-update-icon-cache -q usr/share/icons/hicolor > /dev/null 2>&1
fi
