class CreateLocations < ActiveRecord::Migration[5.2]
  def change
    create_table :locations do |t|
      t.string :title
      t.float :latitude
      t.float :longitude
      t.string :description
      t.string :address
      t.float :rating
      t.timestamps
    end
  end
end
