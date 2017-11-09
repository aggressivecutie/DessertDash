class CreateDesserts < ActiveRecord::Migration[5.1]
  def change
    create_table :desserts do |t|
      t.string :title
      t.decimal :price
      t.text :description
      t.integer :dealer_id

      t.timestamps
    end
    add_index :desserts, :dealer_id
  end
end
