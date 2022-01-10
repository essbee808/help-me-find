class UsersController < ApplicationController
    def new
        @user = User.new
    end

    def create
        @user = User.new(user_params)
        binding.pry
    end

    def user_params
        params.require(:user).permit(:first_name, :last_name, :email, :password_digest)
    end

end
