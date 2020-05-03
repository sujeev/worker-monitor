class Admin::SessionsController < AdminController

  def new
  end

  def create
    admin = Admin.find_by(email: params["email"]).try(:authenticate, params["password"])

    if admin
      session[:admin_id] = admin.id
    end
    redirect_to admin_root_path
  end

  def destroy
    session[:admin_id] = nil
    redirect_to admin_root_path
  end
end
