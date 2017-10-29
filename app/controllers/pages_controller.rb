class PagesController < ApplicationController
    
    def home
        @basic_plan = Plan.find(2)
        @pro_plan = Plan.find(6)
    end
    
    def about
    end
    
    def how_made_path
    end
    
end
