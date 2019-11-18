#!/bin/sh

######### Main setup #########
sudo add-apt-repository universe
sudo apt-get update
sudo apt-get upgrade

# ubuntu make
sudo add-apt-repository ppa:ubuntu-desktop/ubuntu-make
sudo apt-get update
sudo apt-get install -y ubuntu-make

# create user
USR = fabloch
PWD = fabloch
# echo "Username: [fabloch]";
# read USR;
# echo "Password: [fabloch]";
# read PWD;
HASHEDPWD = "$(python3 -c 'import crypt; print(crypt.crypt("'"$PWD"'"))')"
useradd -m -p $HASHEDPWD $USR && echo "User created with success"

# create samba credential files #
sudo touch /etc/samba/cred
sudo sh -c "echo 'username=yourusername' >> /etc/samba/cred"
sudo sh -c "echo 'password=yourpassword' >> /etc/samba/cred"
sudo chmod 0600 /etc/samba/cred

# add new hosts #
sudo sh -c "echo '192.168.0.105 remotemachinename' >> /etc/hosts"


######### Softwares #########
# Make sure to apt-get update
# install software with -y in the same block

#### Office
# firefox and bookmarks
sudo add-apt-repository ppa:ubuntu-mozilla-security/ppa
sudo apt-get update
sudo apt-get install -y firefox
cp firefox/bookmarkbackups /home/fabloch/.mozilla/firefox/*.default/bookmarkbackups

# libreofffice
sudo add-apt-repository ppa:libreoffice/ppa
sudo apt-get update
sudo apt-get install -y libreoffice

# fileZilla
sudo apt-get install -y filezilla

# font-manager
add-apt-repository ppa:font-manager/staging
sudo apt-get update
sudo apt-get install -y font-manager

# simple-scan
sudo apt-get install -y simple-scan

# vlc
sudo add-apt-repository ppa:c-korn/vlc
sudo apt-get update
sudo apt-get install -y vlc


#### 3D modelling and CAD
# freecad
sudo add-apt-repository ppa:freecad-maintainers/freecad-stable
sudo apt-get update
sudo apt-get install -y freecad

# blender
sudo add-apt-repository ppa:thomas-schiex/blender
sudo apt-get update
sudo apt-get install -y blender

#### 3D printing and CAD
# cura
sudo add-apt-repository ppa:thopiekar/cura
sudo apt-get update
sudo apt-get install -y cura

# repetier-host
sudo apt-get install -y repetier-host


#### Design
# inkscape
sudo add-apt-repository ppa:inkscape.dev/stable
sudo apt-get update
sudo apt install inkscape

# scribus
sudo add-apt-repository ppa:scribus/ppa
sudo apt-get update
sudo apt-get install -y scribus

# gimp
sudo add-apt-repository ppa:otto-kesselgulasch/gimp
sudo apt-get update
sudo apt-get install -y gimp


#### photography & video
# darktable
sudo add-apt-repository ppa:pmjdebruijn/darktable-release
sudo apt-get update
sudo apt-get install -y darktable

# handbrake
sudo add-apt-repository ppa:stebbins/handbrake-releases
sudo apt-get update
sudo apt-get install -y handbrake-cli handbrake-gtk

# obs-studio
sudo add-apt-repository ppa:obsproject/obs-studio
sudo apt-get update
sudo apt-get install -y obs-studio


#### Lasercut
# visicut
wget http://download.visicut.org/files/master/Debian-Ubuntu-Mint/visicut_1.8-94-g0188ab30-1_all.deb
dpkg -i visicut_1.8-94-g0188ab30-1_all.deb
rm visicut_1.8-94-g0188ab30-1_all.deb


#### Electronics & IOT
# arduino-ide
sudo apt-get install arduino


#### Coding
# atom
sudo add-apt-repository ppa:webupd8team/atom
sudo apt-get update
sudo apt-get install atom

# code::blocks
sudo apt-get install -y gcc
sudo apt-get install -y clang
sudo apt-get update
sudo apt-get install -y codeblocks
