class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
      t.string :name, null: false
      t.decimal :price, null: false
      t.integer :stock, default: 0, null: false
      t.text :description

      t.timestamps
    end
  end
end
