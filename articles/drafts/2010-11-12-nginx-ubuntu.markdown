title: nginx install on ubuntu
slug: nginx-ubuntu


install rvm
-----------

follow instructions of
    http://rvm.beginrescueend.com/deployment/system-wide/

edit /root/.bashrc
remove return statement (could write a patch for that ?)
    
    http://blog.ninjahideout.com/posts/rvm-system-wide-installs-and-capistrano-integration


add users to rvm groups
    
    usermod -aG rvm www-data
    usermod -aG rvm thenrio


have decent version of nginx on ubuntu
--------------------------------------

install of nginx __alone__ is not required.

nginx does not support loadable modules.

passenger (aka rails-mod) must be compiled in very nginx source

Following is crap
-----------------

    sudo su
    echo "deb http://ppa.launchpad.net/nginx/development/ubuntu lucid main" >> /etc/apt/sources.list
    apt-key adv --keyserver keyserver.ubuntu.com --recv-keys C300EE8C
    apt-get update 
    apt-get install nginx

see

* [official wiki](http://wiki.nginx.org/NginxInstall)

Failitis
--------

When nginx was installed as above, I was not able to remove it properly (remove|purge) :|

What thee package ?

    thenrio@kaizen:~/src/ruby$ sudo aptitude purge nginx
    ....
    thenrio@kaizen:~/src/ruby$ which nginx 
    /usr/sbin/nginx
    thenrio@kaizen:~/src/ruby$ sudo rm -rf /usr/sbin/nginx 

Failitis
--------

All the more, etckeeper did not kept the nginx configuration files :|

Did I checked they were in git ... err 


passenger
=========

    gem install passenger
    sudo su
    rvm passenger-install-nginx-module
    

configure installed nginx
=========================

    rm *.default
    git init && git add * && git commit -m 'initial commit'
    
