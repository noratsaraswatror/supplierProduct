class CreateSuppliers < ActiveRecord::Migration[5.2]
  def change
    create_table :suppliers do |t|
      t.string :name

      t.timestamps
    end
    add_index :suppliers, :id
    add_index :suppliers, :name
  end
end
