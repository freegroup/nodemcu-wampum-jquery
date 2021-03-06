# nodemcu-wampum-jquery

Basic example for an **web interface** for the ESP8266 or WeMos module and the
[nodemcu-wampum](https://github.com/freegroup/nodemcu-wampum) web server.
This tiny web server serves all required resources, which are located on
the SD card, via HTTP.

![WebServer](/teaser.png?raw=true "ESP8266 as full web server")


## What does the WebApp?
Switch on/off the buildin LED of the WeMos or ESP8266 with an **jQuery ajax call**.
Sounds very simple but you should keep in mind that the ESP is very limited in memory and
a normal WebBrowser forces up to 4 parallel connections to the HTTP server. This demo app show
how to serialize, or reduce the parallel connections, to max. 3. This is the maximum
count which is currently possible with the tiny web server without going out of memory.


## Requirements

### NodeMCU Web server
This project structureis adapted to the [nodemcu-wampum](https://github.com/freegroup/nodemcu-wampum).
Just follow the instructions of this project how to install this tiny Web server on your ESP8266.

Again:
 - Install the [nodemcu-wampum](https://github.com/freegroup/nodemcu-wampum) on your ESP8266
 - Copy the build result *(./dist/)* of this project onto your SD card


## How to build

You need bower and grunt to build the demo app.
Grunt runs on Node.js, so if you don't have npm installed already, go ahead and install it.

## To install Grunt's command line interface run:

```
npm install -g grunt-cli
```

With the flag -g you installed it globally and now you can access it from anywhere on your system.

## Bower
Installing bower couldn't be simpler. Just go:
```
npm install -g bower
```
and you have it.

## Download jQuery
and all required libraries in the right version with one command

```
bower install
```
now you have all used js libraries in the right version in your project.


## Install dependencies for the Gruntfile.js
```
npm install
```

##Build the project
After all the installation stuff you can just type:
```
grunt
```
and you find the result in the **dist** folder. In future -you can just type `grunt` if you
have made any changes in the *src* folder to update your *./dist* folder.

You can now copy the *dist/html* and *dist/lua* folder onto your SD card.

**Note**: all files within the *html* folder has the suffix **.gz** because the
grunt build script zip the content for faster download of the content from the NodeMCU.

