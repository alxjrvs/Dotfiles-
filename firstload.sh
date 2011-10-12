#!/bin/bash

sudo apt-get install vim -y 
sudo apt-get install git-core git-gui git-doc -y
sudo add-apt-repository ppa:chromium-daily
sudo apt-get update
sudo apt-get install chromium-browser -y
sudo apt-get install vlc -y 
sudo apt-get install ubuntu-restricted-extras -y
sudo apt-get install libdvdread4 -y 
sudo /usr/share/doc/libdvdread4/install-css.sh -y 
sudo apt-get install chromium-codecs-ffmpeg-extra -y 
sudo apt-get install gimp -y 
sudo apt-get install gimp-data-extras -y 
sudo apt-get install gimp-plugin-registry -y
sudo apt-get install pinta -y 
sudo apt-get install nautilus-dropbox -y 
sudo apt-get install gnome-tweak-tool -y

ssh-keygen -t rsa -C "alxjrvs@gmail.com"

cat ~/.ssh/id_rsa.pub

echo ~/.ssh/id_rsa.pub


while true; do
    read -p "Did you add your publick key to GitHub?" yn
    case $yn in
        [Yy]* ) break;;
        [Nn]* ) exit;;
        * ) echo "Please answer yes or no.";;
    esac
done

cd ~

git init

git remote add origin git@github.com:alxjrvs/Dotfiles-.git

git pull origin master

mkdir Code 

cd Code	

git init

git remote add origin git@github.com:alxjrvs/Pullist.git

git pull origin master

cd ~ 

source .bashrc 

echo "Welcome back." 
