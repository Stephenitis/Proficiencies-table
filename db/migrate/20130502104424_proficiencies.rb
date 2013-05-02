class Proficiencies < ActiveRecord::Migration
  def change
    create_table :proficiencies, :id => false do |t|
      t.references :skill
      t.references :user
      t.integer :years
      t.boolean :formal
    end
    add_index :proficiencies, [:skill_id, :user_id]
  end
end