class AddColumnRequestEquipmets < ActiveRecord::Migration[7.0]
  def change
    add_column :request_equipmets, :equipment_id, :string
  end
end
