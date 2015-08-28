class SessionsController < ApplicationController

  def new

  end

  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      # direct to profile page
      
    else
      # create error msg
      render new
    end
  end

  def destroy

  end

end