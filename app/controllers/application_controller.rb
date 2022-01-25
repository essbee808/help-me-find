class ApplicationController < ActionController::Base
 include SessionsHelper
 protect_from_forgery with: :exception
 #before_action :verified_user 

 private

 def verified_user
    unless logged_in?
        flash[:error] = "Please log in."
        redirect_to '/'
    end
 end
end
