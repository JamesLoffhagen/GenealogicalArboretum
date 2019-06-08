class CreateParentTypes < ActiveRecord::Migration[5.2]
  def change
    create_table :parent_types do |t|
      t.string :parent_type_name

      t.timestamps
    end
  end
end
