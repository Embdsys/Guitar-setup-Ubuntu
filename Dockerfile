# Use the latest Ubuntu image
FROM ubuntu:latest

# Set non-interactive mode for apt-get
ENV DEBIAN_FRONTEND=noninteractive

# Update package list and upgrade packages
RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get dist-upgrade -y

# Install necessary packages for GUI and X11 forwarding
RUN apt-get install -y \
    x11-apps \
    xauth \
    x11-utils \
    sudo \
    wget \
    gnupg \
    software-properties-common \
    lsb-release

# Install a lightweight desktop environment
RUN apt-get install -y \
    xfce4 \
    xfce4-goodies \
    dbus-x11

# Set up a non-root user (optional but recommended)
RUN useradd -m -s /bin/bash user && \
    echo "user:user" | chpasswd && \
    adduser user sudo

# Switch to the non-root user
USER user

# Set environment variables for X11 forwarding
ENV DISPLAY=:0

# Install your program here
# For example, if you need to install a specific package or software, add commands like:
# RUN sudo apt-get install -y your-program

# Expose necessary ports for X11
EXPOSE 6000

# The default command can be adjusted depending on what you want to run
CMD ["startxfce4"]
