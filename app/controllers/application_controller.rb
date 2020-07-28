class ApplicationController < ActionController::Base
helper_method :current_chef, :loggedIn?
  def current_chef
    @current_chef ||= Chef.find(session[:chef_id]) if session[:chef_id]
  end

  def loggedIn?
    !!current_chef
  end

  def require_user
    if !loggedIn?
      flash[:danger]= "You must be logged in to perform that action"
      redirect_to root_path
    end
  end

end
