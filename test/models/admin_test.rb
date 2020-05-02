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

  test "Should not save Admin with an existing email address" do
    admin = Admin.new
    admin.email = "test@test.com"
    admin.password = "123123123"
    admin.password_confirmation = "123123123"
    admin.save
    admin1 = Admin.new
    admin1.email = "test@test.com"
    admin1.password = "123123123"
    admin1.password_confirmation = "123123123"
    assert_not admin1.save
  end
end
