class AddCityToNpcs < ActiveRecord::Migration[7.0]
  def change
    add_reference :npcs, :city, foreign_key: true
  end
end
