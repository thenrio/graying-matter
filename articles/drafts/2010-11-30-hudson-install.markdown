title: Hudson Install

It's been a year at least I did had not done :)

And I did not took notes last times

install
-------

location?

* [latest build permalink](http://hudson-ci.org/latest/hudson.war)
* [older, or versioned](http://hudson-ci.org/download/war/1.386/hudson.war)

download?

    ~/Library/Hudson/1.386 $ curl -OL http://hudson-ci.org/download/war/1.386/hudson.war

run?
    java -jar ~/Library/Hudson/1.386/hudson.war --httpPort=9000&
    

configure
---------

* plugins

  interface can install plugin /updateCenter
  
  installed
  
    * git
    * ruby
    * rake
    * sloccount  

* __restart__

  (note that is written on interface:)

All the rest is daily use ...
Note that I do not plan to use it for my own code, I have enough at this time with file based event devices (ala autotest)
