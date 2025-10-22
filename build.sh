#!/bin/bash

if [[ $EUID -eq 0 ]]; then
    docker build -t 'myoa:latest' .
    docker run --privileged -v ./profile:/profile 'myoa:latest'
else
    echo "Please run me as root!"
fi   