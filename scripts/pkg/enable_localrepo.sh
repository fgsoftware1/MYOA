#!/bin/bash 

sudo sed -E -i '/^#\[localrepo\]/{s/^#//; n; s/^#//; n; s/^#//}' pacman.conf