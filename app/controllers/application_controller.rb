class ApplicationController < ActionController::Base
 include ApplicationHelper
 protect_from_forgery with: :exception
 #before_action :verified_user 

 def welcome
    if !logged_in?
        redirect_to login_path
    end
 end
end
