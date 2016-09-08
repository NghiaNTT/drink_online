class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.string :name
      t.references :category, index: true, foreign_key: true
      t.string :description
      t.float :price
      t.string :image
      t.timestamps null: false
    end
  end
end
