class ApplicationController < ActionController::Base
 include SessionsHelper
 before_action :require_login

 private

 def require_login
    unless logged_in?
        flash[:error] = "Please log in."
        redirect_to root_path
    end
 end
end
