require "test_helper"

class CartProductsControllerTest < ActionDispatch::IntegrationTest
  test "should get add_item" do
    get cart_products_add_item_url
    assert_response :success
  end

  test "should get remove_item" do
    get cart_products_remove_item_url
    assert_response :success
  end

  test "should get update_item" do
    get cart_products_update_item_url
    assert_response :success
  end
end
