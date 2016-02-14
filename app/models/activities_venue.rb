class ActivitiesVenue < ActiveRecord::Base
  belongs_to :activity
  validates_presence_of :activity_id
  validates_presence_of :venue_id
end
