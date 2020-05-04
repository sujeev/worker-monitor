class Admin::DashboardController < AdminController
  before_action :authenticate_admin, except: [:home]

  def home
  end

  def workers
    @workers = Worker.all
  end
end
