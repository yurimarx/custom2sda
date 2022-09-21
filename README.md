## custom2sda
 [![Quality Gate Status](https://community.objectscriptquality.com/api/project_badges/measure?project=intersystems_iris_community%2Fcustom2sda&metric=alert_status)](https://community.objectscriptquality.com/dashboard?id=intersystems_iris_community%2Fcustom2sda)
 
This is a sample how to convert from a custom patient data format to the InterSystems SDA format, using IRIS for Health productions.

## Installation: ZPM
Open IRIS Namespace with Interoperability Enabled.
Open Terminal and call:
USER>zpm "install custom2sda"

## Installation: Docker
Clone/git pull the repo into any local directory

```
$ git clone https://github.com/yurimarx/custom2sda.git
```

Open the terminal in this directory and run:

```
$ docker-compose build
```

3. Run the IRIS container with your project:

```
$ docker-compose up -d
```

## How to Run the Sample
Open the [production](http://localhost:52775/csp/healthshare/user/EnsPortal.ProductionConfig.zen?PRODUCTION=customsda.CustomToSDAProduction) and start it. (user _SYSTEM and password SYS)
It will read patients.csv and convert to SDA.

## Credits 
1. Synthea Database: https://synthea.mitre.org/downloads
2. Marcelo Zagatti from InterSystems Brazil
3. Sue O'Leary from InterSystems training team