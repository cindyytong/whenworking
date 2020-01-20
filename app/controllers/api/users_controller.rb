class Api::UsersController < ApplicationController
    def create
        @user = User.new(user_params)

        if @user.save
            login(@user)
            render "api/users/show"
        else 
            render json: @user.errors.full_messages, status: 422
        end 
    end 

    private 

    def user_params 
        debugger
        params.require(:user).permit(:email, :first_name, :last_name, :password, :over_age_13)
    end 
end 