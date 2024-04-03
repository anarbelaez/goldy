require "test_helper"

class ProductTest < ActiveSupport::TestCase
  test "name should be present" do
    product = Product.new
    assert_not product.valid?
  end

  test "price should be present" do
    product = Product.new
    assert_not product.valid?
  end

  test "stock should be present" do
    product = Product.new
    assert_not product.valid?
  end

  test "price should be greater than 0" do
    bucket = products(:original_recipe_bucket)
    assert_operator bucket.price, :>, 0
  end

  test "stock should be greater than or equal to 0" do
    bucket = products(:original_recipe_bucket)
    assert_operator bucket.stock, :>=, 0
  end
end
