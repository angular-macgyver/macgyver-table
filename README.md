MacGyver Table
===

Yet another AngularJS table solution

## 3rd party libraries dependencies ##
Libraries are only needed for a few directives,
 - AngularJS (1.2.x+)
 - jQuery
 - jQuery UI

## Using MacGyver Table ##
You can install via [Bower](http://www.bower.io) or download from [Github](https://github.com/angular-macgyver/macgyver-table/archive/master.zip)

To install via bower, make sure you have bower installed and then run:

    bower install macgyver-table

Once you have Mac Table in your project, just include "Mac.Table" as a dependency in your Angular application and you’re good to go.

    angular.module("myModule", ["Mac.Table"])

## Get Started On Development ##
Mac Table requires a few node modules and bower packages for development environment.

### Install all through npm ###

    npm install

#### Install Bower ####

    sudo npm -g install bower

#### Install Grunt ####

    sudo npm -g install grunt-cli

#### Install script dependencies

    bower install

#### Starting Grunt
To compile source code and run unit tests while developing:

    grunt dev
