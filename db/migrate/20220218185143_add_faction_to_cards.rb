class AddFactionToCards < ActiveRecord::Migration[7.0]
  def change
    add_reference :cards, :faction, foreign_key: true
  end
end
