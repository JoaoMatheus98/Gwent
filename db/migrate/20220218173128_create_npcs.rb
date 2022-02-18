class CreateNpcs < ActiveRecord::Migration[7.0]
  def change
    create_table :npcs do |t|
      t.string :location
      t.string :name
      t.boolean :uniqueCard

      t.timestamps
    end
  end
end
