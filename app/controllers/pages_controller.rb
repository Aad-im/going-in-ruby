class PagesController < ApplicationController
    
    def home
        @basic_plan = Plan.find(2)
        @pro_plan = Plan.find(3)
    end
    
    def about
    end
end
