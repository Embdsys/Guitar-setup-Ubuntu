
sudo apt-get update
sudo apt-get install apt-transport-https gpgv
wget https://launchpad.net/~kxstudio-debian/+archive/kxstudio/+files/kxstudio-repos_11.0.1_all.deb
sudo dpkg -i kxstudio-repos_11.0.1_all.deb

whoami=$(userName)
sudo usermod -a -G audio $userName

#sudo apt-get install cadence  # Cant intall this way anymore 2022
##########################################
#To install cadence do this
sudo apt-get install libjack-jackd2-dev qtbase5-dev qtbase5-dev-tools
sudo apt-get install python3-pyqt5 python3-pyqt5.qtsvg pyqt5-dev-tools
make ./Cadence || echo "ERROR INSTALLING CADENCE"
make install ./Cadence || echo "ERROR INSTALLING CADENCE"
#######################################
sudo apt-get install pulseaudio-module-jack  
sudo apt-get install qtractor  
sudo apt-get install guitarix  
sudo apt-get install calf-plugins  

#In case cadence fails to install from repo
sudo apt-get install cadence  

# Launch cadence 
cadence
#Ensure configure>Driver>Ensure ALSA is selected and set your audio card
aplay --list-devices
#Configure the rest using youtube video  
#https://www.youtube.com/watch?v=UwMqXwDpL1k

