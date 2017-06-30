class AddCategoryToSales < ActiveRecord::Migration[5.1]
  def change
    add_reference :sales, :category, foreign_key: true
  end
end
