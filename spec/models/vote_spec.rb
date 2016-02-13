require 'rails_helper'

RSpec.describe Vote, type: :model do
  it { should belong_to(:user) }
  it { should belong_to(:vote) }
  it { should belong_to(:venue) }
  it { should validate_presence_of(:user_id) }
  it { should validate_presence_of(:activity_id) }
  it { should validate_presence_of(:user_id) }
end
