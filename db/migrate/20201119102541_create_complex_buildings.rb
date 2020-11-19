class CreateComplexBuildings < ActiveRecord::Migration[5.2]
  def change
    create_table :complex_buildings do |t|
      t.references :manager
      t.string :owner
      t.string :address
      t.integer :units
      t.integer :sqmt
      t.decimal :price
      t.string :photo

      t.timestamps
    end
  end
end
