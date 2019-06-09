class CreateOccupations < ActiveRecord::Migration[5.2]
  def change
    create_table :occupations do |t|
      t.references :individual, foreign_key: true
      t.references :occupation_type, foreign_key: true
      t.date :occupation_date_start
      t.date :occupation_date_end
      t.string :occupation_notes

      t.timestamps
    end
  end
end
