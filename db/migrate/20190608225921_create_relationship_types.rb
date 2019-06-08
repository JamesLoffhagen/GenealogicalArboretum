class CreateRelationshipTypes < ActiveRecord::Migration[5.2]
  def change
    create_table :relationship_types do |t|
      t.string :relationship_type_name
      t.string :relationship_type_notes

      t.timestamps
    end
  end
end
