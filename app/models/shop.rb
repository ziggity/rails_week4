class Shop < ApplicationRecord
  validates :title, presence: true
  validates :body, presence: true
  scope :get_random, -> { order("RANDOM()").first}
  scope :search_by_shop_name, -> (shop_name) { where("title ilike ?", "%#{shop_name}%")}
end
