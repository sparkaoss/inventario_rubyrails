class CreateSolicitudes < ActiveRecord::Migration[7.0]
  def change
    create_table :solicitudes do |t|
      t.string :nombre
      t.string :descripcion
      t.string :destino

      t.timestamps
    end
  end
end
