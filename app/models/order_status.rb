class OrderStatus < ApplicationRecordhas_many :orders
  has_many :orders
end
