class CartedProduct < ApplicationRecord
belongs_to :user
belongs_to :order, optional: true
belongs_to :plate
end
