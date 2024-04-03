class OrderProduct < ApplicationRecord
  belongs_to :order
  belongs_to :product

  enum status: { pending: 0, processing: 1, ready: 2 }

  validates :quantity, :status, :subtotal, presence: true
  validates :quantity, numericality: { only_integer: true, greater_than: 0 }
  validates :subtotal, numericality: { greater_than: 0 }
end
