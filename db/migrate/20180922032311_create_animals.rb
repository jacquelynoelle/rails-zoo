class CreateAnimals < ActiveRecord::Migration[5.2]
  def change
    create_table :animals do |t|
      t.string :name
      t.string :species
      t.integer :age
      t.text :image

      t.timestamps
    end
  end
end
