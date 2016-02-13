require 'rails_helper'

RSpec.describe User, type: :model do
  it { should have_many(:activities) }
  it { should have_many(:votes) }
  it { should have_many(:activities_comments) }
  it { should validate_presence_of(:activity_id) }
  it { should validate_presence_of(:venue_id) }
end
