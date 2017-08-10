class Users::RegistrationsController < Devise::RegistrationsController
    before_filter :select_plan, only: :new
    
    def create
        super do |resource|
            if params[:plan]
                resource.plan_id = params[:plan]
                if resource.plan_id == '6'
                    resource.save_with_payment
                else
                    resource.save
                end
            end
        end
    end
    
    private
    def select_plan
        unless params[:plan] && (params[:plan] == '2' || params[:plan] == '6')
            flash[:notice] = "Please select a membership plan to sign up."
            redirect_to root_url
        end
    end
end