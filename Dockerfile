# Use the latest Ubuntu image
FROM ubuntu:latest

# Set non-interactive mode for apt-get
ENV DEBIAN_FRONTEND=noninteractive

# Update package list and upgrade packages
RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get dist-upgrade -y
    apt-get install alsa-base alsa-utils -y

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

# Set up a non-root root (optional but recommended)
#RUN rootadd -m -s /bin/bash root && \
#    echo "root:root" | chpasswd && \
#    addroot root sudo

# Switch to the non-root root
#root root

# Set environment variables for X11 forwarding
ENV DISPLAY=:0

# Copy the bash script into the container
COPY ./noobInstallGuitarix.sh /home/root/noobInstallGuitarix.sh

# Make the script executable
#RUN chmod +x /home/root/noobInstallGuitarix.sh

# Execute the script
#RUN /home/root/noobInstallGuitarix.sh

# Expose necessary ports for X11
EXPOSE 6000

# The default command can be adjusted depending on what you want to run
CMD ["startxfce4"]
