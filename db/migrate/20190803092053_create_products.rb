class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :title
      t.integer :category_id
      t.decimal :price
      t.timestamps

    end
    add_index :products, :id
    add_index :products, :category_id
  end
end
