class UsersController < ApplicationController
	def index
		@user = User.where({user_id: params[:name]})

	end
	def new
  @user = User.new
	end

	def create
		@user = User.create(user_params)
  		if @user.save
  			session[:user_id] = @user_id
	  			redirect_to  user_post
	  			else
					render template: "sessions/new"
  		end
  	end
  

  

private

	def user_params
		params.require(:user).permit(:name, :email, :password, :password_confirmation)
	end


end




