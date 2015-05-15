class SessionController < ApplicationController
  def new
  end

  def create
    user = User.find_by_email params[:login][:email]
    if !user
      session[:error] = "user not exist"
      render 'new'
    else
      if !user.authenticate(params[:login][:password])
        session[:error] = "password error"
        render 'new'
      else
        sign_in(user)
      end
    end
  end
  def destroy
    reset_session
    cookies.delete :remember_token
    render 'new'
  end
end
