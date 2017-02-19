class CreateItems < ActiveRecord::Migration[5.0]
  def change
    create_table :items do |t|
      t.string :name
      t.integer :price
      t.string :description
      t.integer :section_id
      t.string :image_url

      t.timestamps
    end
  end
end
