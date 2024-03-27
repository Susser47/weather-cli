# weather-cli
## how to setup
To setup the application there are two ways:  
1. manually write all of the commands present in the setup script  
2. run the setup script  

### use the setup script
To download the setup script you first have to download `wget` with this command: 

```bash
sudo apt install wget
``` 

and then install the setup script with: 

```bash
sudo wget https://github.com/Susser47/weather-cli/blob/main/app/setup-script/weather-cli-app-setup.sh
```

after installing the script, run it and it will automatically setup evrithing.  

Or you can manually write all of the commands present in the script.  

### how to setup cities
Now you will have to write all the cities you want to display when typing the command `wtr`.  

You already got the setup script that said "what is your city" right?  
well that is only for your city, but you can even get other cities.  

All the city names should go in the respective file depending if they are:  
1. your city
2. local cities (the cities that are in your country)
3. foreign cities (the cities outside your country)  

**your city**  
your local city was already setup by the script, but you can change it in the `my-city.txt` file  

**local cities**  
the local cities are in the file `local-cities.txt`  

**foreign cities**  
foreign cities are in the `foreign-cities.txt` file  

> all of these files are found in `~/.scripts/weather-cli/`  

## info  
this is an application to get the weather directly from your terminal without serching all of the different websites