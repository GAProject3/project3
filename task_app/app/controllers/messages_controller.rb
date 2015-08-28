class MessagesController < ApplicationController

	def index
		@users = User.find(params[:user_id])
		@messages = @user.messages
	end

	def new
		@user = User.find(params[:user_id])
		@message = Message.new
	end

	def create
		@user = User.find(params[:user_id])
		@message = Message.create(message_params) 
		redirect_to user_messages
	end

	def show
		@message = Message.find(params[:id])
	end

	def destroy
		@message = Message.find(params[:id])
		@message.delete
		redirect_to user_messages
	end

	private
	def message_params
		params.require(:message).permit(:content, :attachment, :sender_id)
	end

end