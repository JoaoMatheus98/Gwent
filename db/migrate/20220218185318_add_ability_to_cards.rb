class AddAbilityToCards < ActiveRecord::Migration[7.0]
  def change
    add_reference :cards, :ability, foreign_key: true
  end
end
