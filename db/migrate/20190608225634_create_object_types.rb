class CreateObjectTypes < ActiveRecord::Migration[5.2]
  def change
    create_table :object_types do |t|
      t.string :object_type_name
      t.string :object_type_notes

      t.timestamps
    end
  end
end
