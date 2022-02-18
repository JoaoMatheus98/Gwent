class AddFactionToNpcs < ActiveRecord::Migration[7.0]
  def change
    add_reference :npcs, :faction, foreign_key: true
  end
end
