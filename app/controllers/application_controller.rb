class ApplicationController < ActionController::Base
  protect_from_forgery with: :null_session

 def after_sign_in_path_for(resource)   
    @user = current_user 
    #  if current_user.admin?     
    #   stored_location_for(resource) || admin_path     
    # else       
    #    stored_location_for(resource) || dashboard_path(current_user.id)      
    #  end       
  end     
end
