class Admin::DashboardController < ApplicationController
  before_action :authenticate_admin

  def home
  end

  def workers
    # pry
  end

private
  def authenticate_admin
    if !@current_admin
      redirect_to new_admin_session_path
    end
  end
end
