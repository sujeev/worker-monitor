class AdminController < ApplicationController
  before_action :current_admin
  layout :set_layout

  def current_admin
    return unless session[:admin_id]
    @current_admin ||= Admin.where(id:session[:admin_id]).first
  end

  def authenticate_admin
    if !@current_admin
      redirect_to new_admin_session_path
    end
  end
  
  def set_layout
    'application-admin'
  end
end
