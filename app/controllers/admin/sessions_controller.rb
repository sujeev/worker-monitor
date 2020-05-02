class Admin::SessionsController < ApplicationController

  def new
  end

  def create
    admin = Admin.find_by(email: params["email"]).try(:authenticate, params["password"])

    if admin
      session[:admin_id] = admin.id
      # render json: {
      #   status: :created,
      #   logged_in: true,
      #   user: user
      # }
      redirect_to workers_admin_dashboard_index_path
    else
      # render json: { status: 401 }
      redirect_to home_admin_dashboard_index_path
    end
    # pry
  end
end
