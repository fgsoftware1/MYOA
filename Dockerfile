FROM archlinux:latest

RUN pacman -Syu --noconfirm gnupg archiso mkinitcpio-archiso grub bash-completion

RUN mkdir -p /etc/sudoers.d && useradd -m builder && echo "builder ALL=(ALL) NOPASSWD: ALL" > /etc/sudoers.d/builder

WORKDIR /profile
COPY ./profile /profile
COPY ./scripts/ /scripts
RUN chmod +x /scripts/entrypoint.sh
RUN chmod +x /scripts/mkpkgs.sh
RUN chmod +x /scripts/mkiso.sh
RUN chown -R builder:builder /profile

ENTRYPOINT ["/scripts/entrypoint.sh"]
