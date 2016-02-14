class Venue < ActiveRecord::Base
  has_many :votes
  validates_presence_of :name
  validates_presence_of :address
end
