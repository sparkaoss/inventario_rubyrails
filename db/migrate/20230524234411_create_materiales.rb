class CreateMateriales < ActiveRecord::Migration[7.0]
  def change
    create_table :materiales do |t|
      t.string :nombre
      t.string :codigo
      t.decimal :precio_unitario
      t.string :cantidad

      t.timestamps
    end
  end
end
