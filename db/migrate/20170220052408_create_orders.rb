class CreateOrders < ActiveRecord::Migration[5.0]
  def change
    create_table :orders do |t|
      t.string :customer_name
      t.string :customer_phone
      t.string :customer_address
      t.integer :quantity
			t.integer :item_id

      t.timestamps
    end
  end
end
