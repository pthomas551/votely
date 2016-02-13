require 'rails_helper'

RSpec.describe Venue, type: :model do
  it { should have_many(:votes) }
  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:address) }
end
