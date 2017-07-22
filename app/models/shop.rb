class Shop < ApplicationRecord
  validates :title, presence: true
  validates :body, presence: true

  scope :search_by_shop_name, -> (shop_name) { where("name ilike ?", "%#{title}%")}
end
