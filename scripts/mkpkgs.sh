#!/bin/sh

# EXAMPLE HOW TO COMPILE EXTERNAL PACKAGES FROM AUR
# su builder << 'EOF'
# gpg --keyserver keyserver.ubuntu.com --recv-keys F4FDB18A9937358364B276E9E25D679AF73C6D2F
# export PKGDEST=/profile/localrepo
# mkdir -p "$PKGDEST" && chmod -R 777 "$PKGDEST"
# cd /profile/packages/wlogout
# makepkg -s -f --noconfirm
# EOF

# UNCOMMENT THE FOLLOWING LINES TO SETUP LOCAL PACKAGES REPOSITORY
# cd /profile
# repo-add /profile/localrepo/localrepo.db.tar.gz /profile/localrepo/*.pkg.tar.zst
# mv /profile/localrepo/localrepo.db.tar.gz /profile/localrepo/localrepo.db
# mv /profile/localrepo/localrepo.files.tar.gz /profile/localrepo/localrepo.files
# sed -i '/^\[localrepo\]/,/^$/d' /profile/pacman.conf
# echo -e "\n[localrepo]\nSigLevel = Optional TrustAll\nServer = file:///profile/localrepo" >> /profile/pacman.conf
