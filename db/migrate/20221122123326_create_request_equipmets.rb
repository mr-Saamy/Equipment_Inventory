class CreateRequestEquipmets < ActiveRecord::Migration[7.0]
  def change
    create_table :request_equipmets do |t|
      t.string :username
      t.string :equipment
      t.integer :no_of_units
      t.string :faculty_in_charge

      t.timestamps
    end
  end
end
