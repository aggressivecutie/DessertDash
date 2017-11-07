class CreateDealers < ActiveRecord::Migration[5.1]
  def change
    create_table :dealers do |t|
      t.string :co_name
      t.string :contact_number
      t.text :street_address
      t.string :suburb
      t.text :about_us
      t.string :text

      t.timestamps
    end
  end
end
