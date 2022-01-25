class UsersController < ApplicationController
    #skip_before_action :verified_user, only: [:new, :create]

    def new
        if !logged_in?
            @user = User.new
        else
            redirect_to root_path
        end
    end

    def create
        #binding.pry
        @user = User.new(user_params)
        #binding.pry
        if @user.save && @user.authenticate(password: params[:user][:password])
           session[:user_id] = @user.id 
           redirect_to @user
        else
           render :new
        end
    end

    def show
        @user = User.find_by(id: params[:id])
    end

    private

    def user_params
        params.require(:user).permit(:first_name, :last_name, :email, :password)
    end

end
