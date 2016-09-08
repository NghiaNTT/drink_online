class Cart < ApplicationRecord
  belong_to :users
  has_many :cart_details, dependent: :destroy
end
