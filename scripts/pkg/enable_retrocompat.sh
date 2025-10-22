#!/bin/sh

sudo sed -E -i '/^#\[multilib\]/{s/^#//; n; s/^#//}' pacman.conf