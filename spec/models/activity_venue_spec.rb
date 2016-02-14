require 'rails_helper'

RSpec.describe ActivitiesVenue, type: :model do
  it { should belong_to(:activity) }
  it { should validate_presence_of(:activity_id) }
  it { should validate_presence_of(:venue_id) }
end
