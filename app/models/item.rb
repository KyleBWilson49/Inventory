class Item < ActiveRecord::Base
  validates :user_id, :name, presence: true
end
