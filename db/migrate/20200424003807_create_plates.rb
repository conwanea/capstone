class CreatePlates < ActiveRecord::Migration[6.0]
  def change
    create_table :plates do |t|
      t.string :print_name
      t.string :scientific_name
      t.string :plate_number
      t.string :medium
      t.integer :price
      t.integer :number_of_prints
      t.string :description
      t.string :image_url

      t.timestamps
    end
  end
end
