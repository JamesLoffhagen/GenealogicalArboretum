class CreateOccupationTypes < ActiveRecord::Migration[5.2]
  def change
    create_table :occupation_types do |t|
      t.string :occupation_type_name
      t.string :occupation_type_description
      t.string :occupation_type_notes

      t.timestamps
    end
  end
end
