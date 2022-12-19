class CreateFaculties < ActiveRecord::Migration[7.0]
  def change
    create_table :faculties do |t|
      t.string :faculty_id
      t.string :faculty_name
      t.string :project_description
      t.string :funding_organization

      t.timestamps
    end
  end
end
