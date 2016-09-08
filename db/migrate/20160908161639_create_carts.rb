class CreateCarts < ActiveRecord::Migration[5.0]
  def change
    create_table :carts do |t|
      t.references :user, index: true, foreign_key: true
      t.float :price
      t.integer :status
      t.timestamps
    end
  end
end
