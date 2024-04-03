require "test_helper"

class OrderTest < ActiveSupport::TestCase
  test "total should be present" do
    order = orders(:johns_order)
    order.total = nil
    assert_not order.valid?
  end

  test "status should be present" do
    order = orders(:johns_order)
    order.status = nil
    assert_not order.valid?
  end

  test "delivery_address should be present" do
    order = orders(:johns_order)
    order.delivery_address = nil
    assert_not order.valid?
  end

  test "total should be greater than or equal to 0" do
    order = orders(:johns_order)
    order.total = -1
    assert_not order.valid?
  end
end
