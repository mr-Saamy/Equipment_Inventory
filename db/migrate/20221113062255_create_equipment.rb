class CreateEquipment < ActiveRecord::Migration[7.0]
  def change
    create_table :equipment do |t|
      t.string :equipment_id
      t.string :equipment_name
      t.string :location
      t.string :in_charge
      t.integer :no_available
      t.integer :no_in_use

      t.timestamps
    end
  end
end
