require 'rails_helper'

describe Event, type: :model do
  it { should validate_presence_of(:object) }
  it { should validate_presence_of(:state) }
end
