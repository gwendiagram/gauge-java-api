## README

This is the Automation Technical Test Web API


## Running in Docker

First install Docker for Mac / Windows

```
https://www.docker.com
```

Start the Docker application

Then build your container with the following command:

```
docker build -t test_api .
```

Once your container has built, use the following command to run the the api on localhost:3000

In terminal run:

```
docker run -p 3000:3000t test_api
```

The application should now be running on http://localhost:3000 which you can navigate to in your browser.


## Gauge API Tests
Technical Test API tests written in Java using Gauge as the test runner.

## Requirements
Maven, Gauge

## Installation
Gauge will need to be installed - install it from here: http://getgauge.io/get-started/
To run the pom file you will need to install maven: https://maven.apache.org/run-maven/

Once gauge is installed, the html-report plugin will need to be installed.  From cmd line/terminal run:

```
gauge --install html-report
```


## Executing the Gauge tests

* First navigate to the gauge/techtest folder

* Next build the application

* To run the tests use the following commands

to run tags i.e.

```
mvn gauge:execute -DspecsDir=specs -Dtags=made_up
```

To run all tests

```
mvn gauge:execute -DspecsDir=specs
```

### Other useful commands
Documentation on the maven plugin for Gauge can be found here: http://getgauge.io/documentation/user/current/advanced_readings/dependency_management/maven-plugin.html

