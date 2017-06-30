class CreateSales < ActiveRecord::Migration[5.1]
  def change
    create_table :sales do |t|
      t.string :title
      t.text :description
      t.date :date
      t.string :address_map
      t.float :latitude
      t.float :longitude

      t.timestamps
    end
  end
end
