class WorkerAuthController < ApplicationController
  before_action :current_worker

  def current_worker
    return unless session[:worker_id]
    @current_worker ||= Worker.where(id:session[:worker_id]).first
  end
end
