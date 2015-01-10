class Category < ActiveRecord::Base
  has_many :searches
  
  scope :sorted, lambda{order("categories.name ASC ")}
  scope :newest_first, lambda{order("categories.created_at DESC")}
end
