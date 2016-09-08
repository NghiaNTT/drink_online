class CartDetail < ApplicationRecord
  belong_to :carts
  belong_to :products
end

