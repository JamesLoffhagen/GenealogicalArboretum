class CreateIndividualMemories < ActiveRecord::Migration[5.2]
  def change
    create_table :individual_memories do |t|
      t.references :individual, foreign_key: true
      t.string :individual_memory_name
      t.date :individual_memory_date
      t.string :individual_memory_fs_location

      t.timestamps
    end
  end
end
