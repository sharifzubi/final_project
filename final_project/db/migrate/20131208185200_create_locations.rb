class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.string :name
      t.string :longtitude
      t.string :latitude
      t.datetime :created_at

      t.timestamps
    end
  end
end
