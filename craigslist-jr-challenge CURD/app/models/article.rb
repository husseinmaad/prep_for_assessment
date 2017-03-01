class Article < ActiveRecord::Base
  # Remember to create a migration!
  belongs_to :category
  validates :title, presence: true
end

