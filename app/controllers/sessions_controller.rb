class SessionsController < ApplicationController
  def new
  end


  #Login
  def create
    user = User.find_by_email(params[:username])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to root_url, notice: "Logged in!"
    else
      # notice: "username or password is invalid"
      render "new"
    end
  end

  #DELETE current_user
  #Log out
  def destroy
    session[:user_id] = nil
    redirect_to root_url
  end




end
