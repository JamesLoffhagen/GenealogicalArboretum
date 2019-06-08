class CreateHealthConditionTypes < ActiveRecord::Migration[5.2]
  def change
    create_table :health_condition_types do |t|
      t.string :health_condition_type_name
      t.string :health_condition_type_notes

      t.timestamps
    end
  end
end
