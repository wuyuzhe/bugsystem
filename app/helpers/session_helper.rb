module SessionHelper
  def sign_in(user)
    cookies[:remember_token] = user.remember_token
    self.current_user = user
    redirect_to "/"
  end
  def current_user=(user)
    @current_user = user
  end
  #是否已登录
  def current_user
    @current_user ||= User.find_by_remember_token(cookies[:remember_token])
  end
  def signed_in?
    !current_user.nil?
  end

  def store_location
    session[:return_to] = request.fullpath
  end
  def signed_in_filter
    store_location
    redirect_to signin_path,notice: '请登录' unless signed_in?
  end
end