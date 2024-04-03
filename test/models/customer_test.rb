require "test_helper"

class CustomerTest < ActiveSupport::TestCase
  test "first_name and last_name are required" do
    customer = Customer.new
    assert_not customer.valid?
    assert_includes customer.errors[:first_name], "can't be blank"
    assert_includes customer.errors[:last_name], "can't be blank"
  end

  test "phone is required" do
    customer = Customer.new
    assert_not customer.valid?
    assert_includes customer.errors[:phone], "can't be blank"
  end
end
