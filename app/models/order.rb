class Order < ApplicationRecord
  belongs_to :user
  has_many :order_products
  has_many :products, through: :order_products

  enum status: { pending: 0, processing: 1, completed: 2 }

  validates :total, :status, :delivery_address, presence: true
  validates :total, numericality: { greater_than_or_equal_to: 0 }
end
