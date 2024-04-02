class CreateOrders < ActiveRecord::Migration[7.0]
  def change
    create_table :orders do |t|
      t.references :user, null: false, foreign_key: true
      t.integer :status, default: 0, null: false
      t.decimal :total, null: false, precision: 10, scale: 2, default: 0
      t.text :delivery_address
      t.datetime :order_date

      t.timestamps
    end
  end
end
