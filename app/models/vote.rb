class Vote < ActiveRecord::Base
  belongs_to :user
  belongs_to :activity
  belongs_to :venue
  validates_presence_of :user_id
  validates_presence_of :activity_id
  validates_presence_of :venue_id
end
