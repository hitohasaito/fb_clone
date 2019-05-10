module SessionsHelper
  def current_user
  @current_user ||= User.find_by(id: session[:user_id])
  end
  def loggin?
    current_user.present?
  end
end
