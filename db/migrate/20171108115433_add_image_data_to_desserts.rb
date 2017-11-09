class AddImageDataToDesserts < ActiveRecord::Migration[5.1]
  def change
    add_column :desserts, :image_data, :text
  end
end
