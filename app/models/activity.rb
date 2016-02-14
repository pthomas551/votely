class Activity < ActiveRecord::Base
  belongs_to :user
  has_many :comments, class_name: "ActivitiesComment"
  has_many :venues, class_name: 'ActivitiesVenue'
  has_many :votes
  validates_presence_of :name
  validates_presence_of :date
  validates_presence_of :time
  validates_presence_of :user_id
end
