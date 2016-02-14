require 'rails_helper'

RSpec.describe User, type: :model do
  it { should have_many(:activities) }
  it { should have_many(:votes) }
  it { should have_many(:comments) }
  it { should validate_presence_of(:password_digest) }
  it { should have_secure_password }
end
