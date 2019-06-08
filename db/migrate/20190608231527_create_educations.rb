class CreateEducations < ActiveRecord::Migration[5.2]
  def change
    create_table :educations do |t|
      t.references :individual, foreign_key: true
      t.references :education_type, foreign_key: true
      t.references :education_field_type, foreign_key: true
      t.string :education_name
      t.string :education_institution
      t.string :education_notes

      t.timestamps
    end
  end
end
