class Album < ActiveRecord::Base
 validates :name, :artist, :description, presence: true
  validates :description, length: {minimum: 10}
end
