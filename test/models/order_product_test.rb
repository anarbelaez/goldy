require "test_helper"

class OrderProductTest < ActiveSupport::TestCase
  test "quantity should be present" do
    order_product = order_products(:johns_bucket)
    order_product.quantity = nil
    assert_not order_product.valid?
  end

  test "status should be present" do
    order_product = order_products(:johns_bucket)
    order_product.status = nil
    assert_not order_product.valid?
  end

  test "subtotal should be present" do
    order_product = order_products(:janes_bucket)
    order_product.subtotal = nil
    assert_not order_product.valid?
  end

  test "quantity should be an integer" do
    order_product = order_products(:johns_bucket)
    order_product.quantity = 1.5
    assert_not order_product.valid?
  end

  test "quantity should be greater than 0" do
    order_product = order_products(:johns_bucket)
    order_product.quantity = 0
    assert_not order_product.valid?
  end

  test "subtotal should be greater than 0" do
    order_product = order_products(:janes_bucket)
    order_product.subtotal = 0
    assert_not order_product.valid?
  end
end
