class SessionController < ApplicationController
  def new
  end

  def create
    user = User.find_by_email params[:login][:email]
    if user && user.authenticate(params[:login][:password])
      sign_in(user)
    else
      render 'new'
    end
  end
  def destroy
    cookies.delete :remember_token
    render 'new'
  end
end