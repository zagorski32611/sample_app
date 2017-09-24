module SessionsHelper
  # logs in the given user
  def log_in(user)
    session[:user_id] = user.id
  end

  # Returns current logged-in user, if any
  def current_user
    @current_user ||= User.find_by(id: session[:user_id])
  end
end
