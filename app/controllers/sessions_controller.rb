class SessionsController < ApplicationController

  def new
  end

  def create
    worker = Worker.find_by(email: params["email"]).try(:authenticate, params["password"])

    if worker
      session[:worker_id] = worker.id
    end
    redirect_to dashboard_home_path
  end

  def destroy
    session[:worker_id] = nil
    redirect_to dashboard_home_path
  end

end
