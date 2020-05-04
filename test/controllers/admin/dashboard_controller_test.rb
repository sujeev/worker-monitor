require 'test_helper'

class Admin::DashboardControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get home_admin_dashboard_index_url
    assert_response :success
  end
  test "should get workers" do
    get workers_admin_dashboard_index_url
    assert_response :success
  end

end
