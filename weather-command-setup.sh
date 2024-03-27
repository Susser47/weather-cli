#!/bin/bash

sudo -i     # accessing root shell

# installing dependencies
apt update
apt install curl -y
apt install inetutils-ping -y

cd ~     # going to home

touch .bash_aliases
mkdir .scripts

cd .scripts
mkdir weather

cd weather
touch weather.sh

# all different cities
touch my-city.txt
touch local-cities.txt
touch foreign-cities.txt


# ask the user its city
echo -n "in what city are you?: "
read userCity

echo "$userCity" > my-city.txt


# code for the script to get the weather
echo "#!/bin/bash

echo "your city: "
localWeather=$(curl -s http://wttr.in/$x?format=3)
echo "the weather for $localWeather"


echo "local cities: "
for x in $(cat ~/.scripts/weather/local-cities.txt);
do
        weather=$(curl -s http://wttr.in/$x?format=3)
        echo "the weather for $weather"
done


echo "foreign cities: "
for x in $(cat ~/.scripts/weather/foreign-cities.txt);
do
        weather=$(curl -s http://wttr.in/$x?format=3)
        echo "the weather for $weather"
done" > weather.sh

# TODO: finish with aliases and evrithing else