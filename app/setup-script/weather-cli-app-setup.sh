#!/bin/bash

current-dir=$PWD


sudo apt update
sudo apt install curl -y
sudo apt install wget -y

cd ~

mkdir .scripts

cd .scripts
mkdir weather-cli

cd weather-cli

wget https://raw.githubusercontent.com/Susser47/weather-cli/main/app/weather.sh

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

echo "alias wtr='sh ~/.scripts/weather-cli/weather.sh'" >> .bash_aliases


cd "$current-dir"


echo "installation completed"
