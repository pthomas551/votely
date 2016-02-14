require 'rails_helper'

RSpec.describe Vote, type: :model do
  it { should belong_to(:user) }
  it { should belong_to(:activity) }
  it { should belong_to(:venue) }
  it { should validate_presence_of(:user_id) }
  it { should validate_presence_of(:activity_id) }
  it { should validate_presence_of(:venue_id) }
end
