title: nginx install macos

nginx install on macos
======================

install nginx + passenger
-------------------------

    brew install nginx --with-passenger

        server {
            listen 80;
            server_name conference.gemba;
            root /home/thenrio/src/ruby/conference-on-rails/public;
            passenger_enabled on;
        }

