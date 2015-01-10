class Search < ActiveRecord::Base
  belongs_to :category

  scope :sorted, lambda{order("categories.name ASC ")}
  scope :newest_first, lambda{order("categories.created_at DESC")}

  validates :title, :presence => true,
                   :length => {within: 1..100}
end
