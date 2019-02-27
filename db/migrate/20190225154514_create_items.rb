class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.string :name
      t.string :description
      t.string :price
      t.integer :likes
      t.integer :dislikes
      t.string :image
      t.integer :restaurant_id
      t.integer :category_id

      t.timestamps
    end
  end
end
