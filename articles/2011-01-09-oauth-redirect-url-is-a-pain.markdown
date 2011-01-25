title: Configuring external application to access twitter|github ... is a pain
slug: oauth-redirect-url-is-a-pain

Testing local development for twitter ?

Remember, "integration" test

1. Go to [dev.twitter.com](http://dev.twitter.com/) and add an application

2. Sign in

3. Add an app

    pretty simple, pain is callback url for a browser application

          http://127.0.0.1:3000/users/auth/twitter/callback
    
    is a pretty good value for a omni-devised app
    
Deploying to heroku ?
=====================

do it again !!! You require another application with its own redirect url !!!

and do not mess with callback url, point to where you will be redirected

and restart, automated restart did not work for me (gasp)

\#pita
======

resource
========

* crawl [omniauth](https://github.com/intridea/omniauth/tree/master/oa-oauth/lib/omniauth/strategies) to know how to authorize an app to connect to one account

    github ?
    
    goto [https://github.com/account/applications](https://github.com/account/applications)

