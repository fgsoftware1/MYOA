#!/bin/sh

sudo sed -E -i '/^#\[core-testing\]/{s/^#//; n; s/^#//}' pacman.conf
sudo sed -E -i '/^#\[extra-testing\]/{s/^#//; n; s/^#//}' pacman.conf