class CreateMovies < ActiveRecord::Migration[5.0]
  def change
    create_table :movies do |t|
      t.string :title
      t.integer :director_id
      t.integer :box_office
      t.boolean :greenlit
      t.string :trailer
    end
  end
end
