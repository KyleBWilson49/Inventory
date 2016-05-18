class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :name, null: false
      t.integer :user_id, null: false
      t.string :image
      t.text :description
      t.float :purchace_price

      t.timestamps null: false
    end

    add_index :items, :user_id
    add_index :items, :name
  end
end
