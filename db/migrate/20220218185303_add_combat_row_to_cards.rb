class AddCombatRowToCards < ActiveRecord::Migration[7.0]
  def change
    add_reference :cards, :combat_rows, foreign_key: true
  end
end
