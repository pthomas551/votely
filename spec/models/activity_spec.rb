require 'rails_helper'

RSpec.describe Activity, type: :model do
  it { should belong_to(:user) }
  it { should have_many(:comments) }
  it { should have_many(:venues) }
  it { should have_many(:votes) }
  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:date) }
  it { should validate_presence_of(:time) }
  it { should validate_presence_of(:user_id) }
end
