class CreateHealthConditions < ActiveRecord::Migration[5.2]
  def change
    create_table :health_conditions do |t|
      t.references :individual, foreign_key: true
      t.references :health_condition_type, foreign_key: true
      t.string :health_condition_notes

      t.timestamps
    end
  end
end
