class CreateAssociatedQuests < ActiveRecord::Migration[7.0]
  def change
    create_table :associated_quests do |t|
      t.string :name
      t.string :description

      t.timestamps
    end
  end
end
