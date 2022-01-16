class SessionsController < ApplicationController
  def new
    # render login form
  end

  def create
    #binding.pry
    user = User.find_by(email: params[:session][:email])
    
    if user && user.authenticate(params[:session][:password])
      log_in(user)
      redirect_to user
    else
      render :new
    end
  end

  def destroy
    log_out
    redirect_to '/'
  end

end
