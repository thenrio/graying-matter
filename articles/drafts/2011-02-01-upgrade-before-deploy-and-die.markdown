Do not upgrade before deploying


upgrade from 

* ruby-1.9.2-p0 to ruby-1.9.2-p136
* rubygems 1.3.7 to 1.5.0

Not a hard job, just a couple of hand editing

    gem install bundler

for ruby-1.9.2-p136

    gem install mongoid --version '=2.0.0.beta.20'
    gem install mongoid-rspec --ignore-dependencies
    
then

    bundle install
    
    

