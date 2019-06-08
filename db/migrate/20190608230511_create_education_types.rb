class CreateEducationTypes < ActiveRecord::Migration[5.2]
  def change
    create_table :education_types do |t|
      t.string :education_type_name
      t.string :education_type_notes

      t.timestamps
    end
  end
end
