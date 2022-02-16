class CreateCards < ActiveRecord::Migration[7.0]
  def change
    create_table :cards do |t|
      t.string :name
      t.string :description
      t.integer :attack
      t.string :url_image

      t.timestamps
    end
  end
end
