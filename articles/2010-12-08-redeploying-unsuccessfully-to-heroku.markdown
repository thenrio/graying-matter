title: Redeploying unsuccessfully an application to heroku
slug: redeploying-unsuccessfully-to-heroku


I have a running app on [heroku](http://heroku.com/), and it does not accept push anymore, complaining with bundler ... I supposed it was a side effect of my code in Gemfile and bundler upgrades

database is mongodb managed by [mongohq](https://mongohq.com/)

memorize previous settings
--------------------------
namely

    MONGOHQ_URL=MONGOHQ_URL=mongodb://app317866:a53jnwnzljd8fexva8k0aw@flame.mongohq.com:27066/app317866

destroy app from interface
--------------------------
easy :)

recreate app from command line
------------------------------
heroku create charming-conference

configure existing mongohq
--------------------------

    heroku addons:add mongohq:free

then MONGOHQ_URL         => mongodb://app372313:5xrfmexjdmw7shh3caqmdg@flame.mongohq.com:27066/app372313

    heroku config:remove MONGOHQ_URL
    heroku config:add MONGOHQ_URL=mongodb://app317866:a53jnwnzljd8fexva8k0aw@flame.mongohq.com:27066/app317866

configure bundler for heroku
----------------------------
see [there](http://docs.heroku.com/bundler)

    heroku config:add BUNDLE_WITHOUT="development:test"

push to heroku
--------------
push a topic branch

  git push heroku heroku:master

push default master

  git push heroku
  
launch and have the reward of seeing your app run :)
----------------------------------------------------

It did not run, it __crashed__

Reason is, there is no mongo database responding to settings ...
Huh ???

Oh Noes, it looks like killing app on heroku actually killed data on mongohq !

I was not able to connect to old or initial mongohq uri !!

Fail !!!

re-add mongohq gives a valid uri to which you can connect
------------------------------------------------------------

Can see site with no data

Can see it in mongohq interface (see this [post](http://support.mongohq.com/discussions/community-tips/2-logging-in-to-mongohq-for-heroku-users))

Lesson relearned
================

* __backup your data before maintenance|upgrade operation__
