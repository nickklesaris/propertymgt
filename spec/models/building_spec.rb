require 'spec_helper'

describe Building do
it {should validate_presence_of(:address)}
  it {should validate_presence_of(:city)}
  it {should validate_presence_of(:postcode)}
  it {should ensure_inclusion_of(:state).in_array(Building::STATES)}
  it {should belong_to(:owner)}
end

