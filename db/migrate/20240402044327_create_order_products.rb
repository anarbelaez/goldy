class CreateOrderProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :order_products do |t|
      t.references :order, null: false, foreign_key: true
      t.references :product, null: false, foreign_key: true
      t.integer :quantity
      t.integer :status, default: 0, null: false
      t.decimal :subtotal, null: false, precision: 10, scale: 2, default: 0

      t.timestamps
    end
  end
end
