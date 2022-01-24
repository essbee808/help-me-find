class ApplicationController < ActionController::Base
 include SessionsHelper
 
 private

 def require_login
    unless logged_in?
        flash[:error] = "Please log in."
        redirect_to login_url
    end
 end
end
