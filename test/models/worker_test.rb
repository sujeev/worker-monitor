require 'test_helper'

class WorkerTest < ActiveSupport::TestCase
  test "should not save Worker without email address" do
    worker = Worker.new
    worker.password = "123123123"
    worker.password_confirmation = "123123123"
    assert_not worker.save
  end

  test "should not save Worker without password" do
    worker = Worker.new
    worker.email = "test@test.com"
    assert_not worker.save
  end

  test "should not save Worker with different passwords" do
    worker = Worker.new
    worker.email = "test@test.com"
    worker.password = "123123123"
    worker.password_confirmation = "123123"
    assert_not worker.save
  end

  test "Should not save Worker with an existing email address" do
    worker = Worker.new
    worker.email = "test@test.com"
    worker.password = "123123123"
    worker.password_confirmation = "123123123"
    worker.save
    worker1 = Worker.new
    worker1.email = "test@test.com"
    worker1.password = "123123123"
    worker1.password_confirmation = "123123123"
    assert_not worker1.save
  end
end
