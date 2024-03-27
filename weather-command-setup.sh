#!/bin/bash

current-dir=$PWD

sudo -i     #* accessing root shell


apt update
apt install curl -y
apt install wget -y

cd ~

mkdir .scripts

cd .scripts
mkdir weather-cli

cd weather-cli

wget https://github.com/Susser47/weather-cli/weather.sh

# creating all different city files
touch my-city.txt
touch local-cities.txt
touch foreign-cities.txt


# ask the user his city
echo -n "in what city are you?: "
read userCity

echo "$userCity" > my-city.txt


# creating bash aliases
cd ~
touch .bash_aliases

echo "wtr='sh ~/.scripts/weather-cli/weather.sh'" > .bash_aliases


exit    #* this is to exit sudo mode
cd $current-dir