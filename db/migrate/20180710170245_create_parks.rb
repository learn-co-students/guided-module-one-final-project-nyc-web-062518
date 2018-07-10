class CreateParks < ActiveRecord::Migration[5.0]
  def change
    create_table :parks do |t|
      t.string :states
      t.string :latitude_longitude
      t.text :description
      t.string :designation
      t.string :park_code
      t.string :park_id
      t.text :directions_info
      t.string :directions_url
      t.string :full_name
      t.string :url
      t.text :weather_info
      t.string :name
    end
  end
end
