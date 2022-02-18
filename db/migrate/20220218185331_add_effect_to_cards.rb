class AddEffectToCards < ActiveRecord::Migration[7.0]
  def change
    add_reference :cards, :effect, foreign_key: true
  end
end
