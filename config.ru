require 'toto'

# Rack config
use Rack::Static, :urls => ['/css', '/js', '/images', '/favicon.ico'], :root => 'public'
use Rack::CommonLogger

if ENV['RACK_ENV'] == 'development'
  use Rack::ShowExceptions
end

#
# Create and configure a toto instance
#
toto = Toto::Server.new do
  # Add your settings here
  # set [:setting], [value]
  # 
  # set :root,      "index"                                   # page to load on /
  # set :markdown,  :smart                                    # use markdown + smart-mode
  # set :cache,      28800                                    # cache duration, in seconds
  # set :disqus, true

  set :author, 'Thierry Henrio'
  set :title, 'Graying Matter'
  set :summary,   :max => 150, :delim => /~\n/
  set :ext, 'markdown'
  set :date, lambda {|now| now.strftime("%B #{now.day.ordinal} %Y") }
  set :github, :user => "thierryhenrio", :repos => ['cant', 'wrong', 'conference-on-rails'], :ext => 'markdown'
end

run toto