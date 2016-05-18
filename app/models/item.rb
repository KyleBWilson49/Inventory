class Item < ActiveRecord::Base
  validates :user_id, :name, presence: true

  belongs_to :user
  has_many :categories

  def main_category
    Category.where("parent_id IS NULL AND item_id = ?", self.id)
  end
end
