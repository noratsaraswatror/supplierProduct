class CreateDeals < ActiveRecord::Migration[5.2]
  def change
    create_table :deals do |t|
      t.integer "product_id",  null: false
      t.integer "supplier_id", null: false
      t.boolean :is_active
    end
    add_index "deals", ["supplier_id", "product_id"], name: "index_products_suppliers_on_product_id_and_supplier_id"
  end
end
