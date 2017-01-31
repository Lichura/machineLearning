class CreateCasas < ActiveRecord::Migration[5.0]
  def change
    create_table :casas do |t|
      t.integer :precio
      t.integer :metros
      t.integer :habitacion

      t.timestamps
    end
  end
end
