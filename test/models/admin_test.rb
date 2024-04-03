require "test_helper"

class AdminTest < ActiveSupport::TestCase
  test "first name should be present" do
    admin = Admin.new
    assert_not admin.valid?
  end
end
