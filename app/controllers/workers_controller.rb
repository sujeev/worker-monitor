class WorkersController < WorkerAuthController
  before_action :set_worker, only: [:punch_out]

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

  def punch_out
    if params.has_key? "time"
      time = params[:time]
      @worker.total_time += time.to_i
      @worker.save
    end
    redirect_to root_path
  end

private

  def set_worker
    @worker = Worker.find(params[:id])
  end

  def worker_params
  params.require(:worker).permit(:email, :password, :password_confirmation)
  end

end
