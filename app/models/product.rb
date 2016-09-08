class Product < ApplicationRecord
  belong_to :categories
  has_many :cart_details
  has_many :reviews, dependent: :destroy
end
