class CreateCombatRows < ActiveRecord::Migration[7.0]
  def change
    create_table :combat_rows do |t|
      t.string :name
      t.string :description

      t.timestamps
    end
  end
end
