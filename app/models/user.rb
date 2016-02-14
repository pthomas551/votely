class User < ActiveRecord::Base
  has_secure_password
  has_many :activities
  has_many :votes
  has_many :comments, class_name: 'ActivitiesComment'
  validates_presence_of :password_digest
end
