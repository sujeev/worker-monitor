require 'test_helper'

class AdminTest < ActiveSupport::TestCase

  test "should not save Admin without email address" do
    admin = Admin.new
    admin.password = "123123123"
    admin.password_confirmation = "123123123"
    assert_not admin.save
  end

  test "should not save Admin without password" do
    admin = Admin.new
    admin.email = "test@test.com"
    assert_not admin.save
  end

  test "should not save Admin with different passwords" do
    admin = Admin.new
    admin.email = "test@test.com"
    admin.password = "123123123"
    admin.password_confirmation = "123123"
    assert_not admin.save
  end
end
