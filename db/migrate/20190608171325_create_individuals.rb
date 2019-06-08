class CreateIndividuals < ActiveRecord::Migration[5.2]
  def change
    create_table :individuals do |t|
      t.string :name_last
      t.string :name_first
      t.string :name_middle
      t.string :name_maiden
      t.string :name_familiar
      t.string :gender
      t.datetime :date_birth
      t.datetime :date_death
      t.string :place_birth
      t.string :cause_death
      t.text :misc_notes

      t.timestamps
    end
  end
end
