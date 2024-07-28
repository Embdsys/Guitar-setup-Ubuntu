#!/bin/bash

# Might need to give permissions
#xhost +local:docker

# Re build image every time to keep updated
docker build -t ubuntu-gui . 

# Runs on DISPLAY:0
docker run -it --rm \
    -e DISPLAY=$DISPLAY \
    -v /tmp/.X11-unix:/tmp/.X11-unix \
    ubuntu-gui /bin/bash
