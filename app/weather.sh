#!/bin/bash

echo


echo "your city: "
localCity=$(cat ~/.scripts/weather-cli/my-city.txt)
localWeather=$(curl -s http://wttr.in/$localCity?format=3)
echo "the weather for $localWeather"

echo

echo "local cities: "
for x in $(cat ~/.scripts/weather-cli/local-cities.txt);
do
        weather=$(curl -s http://wttr.in/$x?format=3)
        echo "the weather for $weather"
done

echo

echo "foreign cities: "
for x in $(cat ~/.scripts/weather-cli/foreign-cities.txt);
do
        weather=$(curl -s http://wttr.in/$x?format=3)
        echo "the weather for $weather"
done


echo
