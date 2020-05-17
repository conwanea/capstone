class Order < ApplicationRecord
belongs_to :user
has_many :carted_products
has_many :plates, through :carted_products
end
