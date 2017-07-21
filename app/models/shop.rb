class Shop < ApplicationRecord
  validates :title, presence: true
  validates :body, presence: true
  def self.search_by_name(name)
       if name
         where('name LIKE ?', "#{name}")
       else
         scoped
       end
     end
end
