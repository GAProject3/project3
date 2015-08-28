class UsersController < ApplicationController
	def new
  @user = User.new
	end

	def create
		@user = User.create(user_params)
  		if @user.save
  			session[:user_id] = @user_id
	  			render template "users/:id"
  		end
  	end
  

  

private

	def users_params
		params.require(:user).permit(:name, :email, :password, :password_confirmation)
	end


end




