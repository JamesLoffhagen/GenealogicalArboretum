class CreateRoleTypes < ActiveRecord::Migration[5.2]
  def change
    create_table :role_types do |t|
      t.string :role_type_name
      t.string :role_type_notes

      t.timestamps
    end
  end
end
