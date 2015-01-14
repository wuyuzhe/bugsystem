class RegController < ApplicationController
  def new
    @user = User.new
  end
  def create
    user = User.new(user_params)
    user.save
    if user.authenticate(params[:user][:password])
      sign_in(user)
    else
      Redirect_to
    end
  end
  private
    def user_params
      params.require(:user).permit(:password,:password_confirmation, :email, :wechat)
    end
end