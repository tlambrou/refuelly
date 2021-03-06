class CreateCafes < ActiveRecord::Migration[5.1]
  def change
    create_table :cafes do |t|
      t.string :name
      t.decimal :latitude, precision: 9, scale: 6
      t.decimal :longitude, precision: 9, scale: 6

      t.timestamps
    end
  end
end
