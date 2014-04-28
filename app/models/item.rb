class Item < ActiveRecord::Base
  belongs_to :session
  validates :name, presence: true, uniqueness: {cas_sensitive: false}
  GROUPINGS = %w(Outstanding Great Okay Poor Awful)
end
