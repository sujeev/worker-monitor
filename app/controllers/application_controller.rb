class ApplicationController < ActionController::Base

  def current_admin
    return unless session[:admin_id]
    @current_admin ||= Admin.find(session[:admin_id])
  end

end
