class CreateEducationFieldTypes < ActiveRecord::Migration[5.2]
  def change
    create_table :education_field_types do |t|
      t.string :education_field_type_name
      t.string :education_field_type_notes

      t.timestamps
    end
  end
end
