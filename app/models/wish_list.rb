class WishList < ApplicationRecord
  belong_to :users
  belong_to :products
end
