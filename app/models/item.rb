class Item < ActiveRecord::Base
  belongs_to :session
  validates :name, presence: true, uniqueness: {case_sensitive: false}
  GROUPINGS = %w(Outstanding Great Okay Poor Awful)
end
