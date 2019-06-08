class CreateParents < ActiveRecord::Migration[5.2]
  def change
    create_table :parents do |t|
      t.references :individual
      t.references :parent
      t.references :parent_type, foreign_key: true
      t.text :parent_notes

      t.timestamps
    end
  end
end
