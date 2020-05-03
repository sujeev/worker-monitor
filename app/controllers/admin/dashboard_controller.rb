class Admin::DashboardController < AdminController
  before_action :authenticate_admin, except: [:home]

  def home
  end

  def workers
    @workers = Worker.all
  end

private
  def authenticate_admin
    if !@current_admin
      redirect_to new_admin_session_path
    end
  end
end
