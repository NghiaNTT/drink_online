class Category < ApplicationRecord
  include Kaminari::ActiveRecordModelExtension
  has_many :products
end
