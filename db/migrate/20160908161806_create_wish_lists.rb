class CreateWishLists < ActiveRecord::Migration[5.0]
  def change
    create_table :wish_lists do |t|
      t.references :user, index: true, foreign_key: true
      t.references :product, index: true, foreign_key: true
      t.string :content
      t.integer :rate
      t.timestamps
    end
  end
end
