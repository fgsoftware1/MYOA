#!/bin/bash

if [[ $EUID -eq 0 ]]; then
    docker run --privileged -v ./profile:/profile 'ghcr.io/fgsoftware1/myoa'
else
    echo "Please run me as root!"
fi   