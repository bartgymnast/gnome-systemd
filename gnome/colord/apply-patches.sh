
set -e -o pipefail

# patch -p0 -E --backup --verbose -i ${CWD}/${PKGNAM}.patch
patch -p0 -E --backup --verbose -i ${CWD}/colord-1.1.6-systemd209.patch

# Set to YES if autogen is needed
SBO_AUTOGEN=YES

set +e +o pipefail
