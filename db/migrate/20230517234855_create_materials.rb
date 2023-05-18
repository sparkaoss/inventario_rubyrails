class CreateMaterials < ActiveRecord::Migration[7.0]
  def change
    create_table :materials do |t|
      t.string :name
      t.text :description
      t.integer :cantidad
      t.string :ubicacion

      t.timestamps
    end
  end
end
