class SessionsController < ApplicationController
  def new
  end

  def login
    user = User.find_by(username: params[:username])
    if user && user.authenticate(params[:password])
      flash.notice = "You are now logged in"
      session[:user_id] = user.id
      redirect_to root_path
    else
      flash.notice = "Incorrect username/password combonation"
      render :new
    end
  end
end
