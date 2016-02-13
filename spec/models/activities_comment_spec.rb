require 'rails_helper'
# require 'shoulda/matchers'
RSpec.describe ActivitiesComment, type: :model do
  it { should belong_to(:user) }
  it { should belong_to(:activity) }
  it { should validate_presence_of(:user_id) }
  it { should validate_presence_of(:activity_id) }
  it { should validate_presence_of(:body) }
end
