require "test_helper"

class CategoryTest < ActiveSupport::TestCase
  test "name should be present" do
    category = Category.new
    assert_not category.valid?
  end

  test "name should be unique" do
    Category.create(name: "test")
    category = Category.new(name: "test")
    assert_not category.valid?
  end
end
