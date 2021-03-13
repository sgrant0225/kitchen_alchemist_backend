class CreateUses < ActiveRecord::Migration[6.0]
  def change
    create_table :uses do |t|
      t.string :title
      t.string :ingredients
      t.string :recipe
      t.integer :item_id
      t.timestamps
    end
  end
end
