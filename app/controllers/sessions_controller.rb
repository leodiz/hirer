class SessionsController < ApplicationController
  def login
  end
  def login_attempt
    authorized_user = Emp.authenticate(params[:username_or_email],params[:login_password])
    if authorized_user
      flash[:notice] = "Wow Welcome again, you logged in as #{authorized_user.username}"
      redirect_to(:action => 'home')
    else
      flash[:notice] = "Invalid Username or Password"
      flash[:color]= "invalid"
      render "login"
    end
  end
  def home
  end

  def profile
  end

  def settings
  end
end
