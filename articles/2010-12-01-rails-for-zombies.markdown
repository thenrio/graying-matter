title: Rails for Zombies!!
slug: rails-for-zombies

[Rails For Zombies](http://railsforzombies.org/) is a great experience, both visual
I skipped all screencasts, but when I did not understand questions (??!!)

what I learned that is what was not right in my head

validates :name, :presence=> true, :uniqueness=> true
-----------------------------------------------------
 
I believe I had it in an obscure corner of my matter
 
This is relearning and I had really forgot :)

__then, I should improve my ability to crawl source|documentation__

String#truncate core extension method
-------------------------------------

display nice ... for truncated string up to number of characters
  
inline render can be terse and save a template
----------------------------------------------

    def show
      @zombie = Zombie.find(params[:id])

      respond_to do |format|
        format.xml {render :xml => @zombie.to_xml}
        format.json {render :json => @zombie.to_json}
      end
    end

plural is controller default naming convention, do not forget it in routes
--------------------------------------------------------------------------
        RailsForZombies::Application.routes.draw do
          get '/undead' => 'zombies#undead'
        end

that is zombies, rather than zombie
