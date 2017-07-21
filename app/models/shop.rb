class Shop < ApplicationRecord
  validates :title, presence: true
  validates :body, presence: true

def self.random
    ids = connection.select_all("SELECT id FROM shops")
    find(ids[rand(ids.length)]["id"].to_i) unless ids.blank?
  end
end
