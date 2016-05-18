class Category < ActiveRecord::Base
  validates :user_id, :item_id, :name, presence: true

  belongs_to :user
  belongs_to :item
  belongs_to :parent_category,
              class_name: "Category",
              foreign_key: "parent_id"

  def sub_categories
    Category.where("parent_id = ?", self.id)
  end
end
