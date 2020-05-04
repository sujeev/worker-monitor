class Admin::WorkersController < AdminController
  before_action :authenticate_admin
  before_action :set_worker, only: [:activate, :deactivate]

  def activate
    @worker.active = true
    @worker.save
    redirect_to workers_admin_dashboard_index_path
  end

  def deactivate
    @worker.active = false
    @worker.save
    redirect_to workers_admin_dashboard_index_path
  end

private
  def set_worker
    @worker = Worker.find(params[:id])
  end
end
