class ApplicationController < ActionController::Base
  before_action :current_admin

  def current_admin
    return unless session[:admin_id]
    @current_admin ||= Admin.where(id:session[:admin_id]).first
  end

end
