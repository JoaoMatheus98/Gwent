class CreateFactions < ActiveRecord::Migration[7.0]
  def change
    create_table :factions do |t|
      t.string :name
      t.string :description
      t.string :color
      t.string :url_image

      t.timestamps
    end
  end
end
