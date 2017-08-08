class PagesController < ApplicationController
    
    def home
        @basic_plan = Plan.find(2)
        @pro_plan = Plan.find(6)
        # @both_plan = Plan.find(5)
    end
    
    def about
    end
end
