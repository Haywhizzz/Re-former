class UsersController < ApplicationController
    def create
        #@user = User.new(user_params)
        @user = User.new(username: params[:username], email: params[:email], password: params[:password])

      
        if @user.save
          redirect_to new_user_path
        else
            @user.errors.messages
            redirect_to user_path
        end
      end
    def new
    end
    def user_params 
        params.require(:user).permit(:username,:email,:password)
    end
end
