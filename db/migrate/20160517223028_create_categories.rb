class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.integer :user_id, null: false
      t.integer :item_id, null: false
      t.string :name, null: false

      t.timestamps null: false
    end

    add_index :categories, :user_id
    add_index :categories, :item_id
    add_index :categories, :name 
  end
end
