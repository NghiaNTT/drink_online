class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  validates :name, presence: true, length: {maximum: 20},
    uniqueness: {case_sensitive: false}
  has_many :reviews, dependent: :destroy
  has_many :wish_lists, dependent: :destroy
  has_many :products, through: :wish_lists
  has_many :carts, dependent: :destroy
end
