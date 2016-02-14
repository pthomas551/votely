class ActivitiesComment < ActiveRecord::Base
  belongs_to :user
  belongs_to :activity
  validates_presence_of :user_id
  validates_presence_of :activity_id
  validates_presence_of :body
end
