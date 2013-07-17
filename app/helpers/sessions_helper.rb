module SessionsHelper
  
  def current_user
    return nil unless session[:session_token]
    @current_user ||= User.find_by_session_token(session[:session_token])
  end
  
  def logged_in? 
    !!current_user
  end
  
  def login(user)
    user.session_token = session[:session_token] = SecureRandom.base64
    user.save
  end

end
