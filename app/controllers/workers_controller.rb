class WorkersController < ApplicationController

  def new
    @worker = Worker.new
  end

  def create
    @worker = Worker.new(worker_params)

    if @worker.save
      redirect_to root_path
    else
      render :new
    end
  end

private

  def worker_params
  params.require(:worker).permit(:email, :password, :password_confirmation)
  end

end
