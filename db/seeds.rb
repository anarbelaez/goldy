# frozen_string_literal: true

require_relative "seed/products"

models = [OrderProduct, Order, Product, Category, User]
models.each(&:destroy_all)

%w[Buckets Sides Beverages Desserts].map do |category_name|
  Category.create!(name: category_name)
end

PRODUCTS.each_value do |product|
  Product.create!(
    name: product[:name],
    description: product[:description],
    price: product[:price],
    stock: product[:stock],
    category: Category.find_by(name: product[:category])
  )
end

5.times do
  Customer.create!(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: Faker::Internet.email,
    phone: Faker::PhoneNumber.cell_phone,
    password: '12345678'
  )
end

Admin.create!(
  first_name: "Ana Maria",
  last_name: "Arbelaez Lopez",
  email: "anamaria@email.com",
  password: '12345678'
)

Customer.all.each do |customer|
  order = Order.create!(
    user: customer,
    total: 0,
    order_date: Faker::Date.backward(days: 14),
    delivery_address: Faker::Address.full_address,
    status: Order.statuses.values.sample,
  )

  2.times do
    product = Product.all.sample
    OrderProduct.create!(
      order:,
      product:,
      quantity: Faker::Number.between(from: 1, to: 2),
      status: OrderProduct.statuses.values.sample,
      subtotal: product.price
    )
  end

  order.update!(total: order.order_products.sum('quantity * subtotal'))
end

puts "Ok! 🐔🐣"
