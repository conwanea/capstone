class ChangeProductIdtoPlateIdOnCartedProducts < ActiveRecord::Migration[6.0]
  def change
    rename_column :carted_products, :product_id, :plate_id
  end
end
