class SessionsController < ApplicationController
  def new
  end

  def create
    binding.pry
    user = User.find_by(email: params[:session][:email])
    
    if user && user.authenticate(params[:session][:password])
    else
    end
  end

  def destroy
  end

end
