class CreateActors < ActiveRecord::Migration[5.0]
  def change
    create_table :actors do |t|
      t.string :name
      t.boolean :a_list
      t.integer :paygrade
      t.string :wikipedia
    end
  end
end
