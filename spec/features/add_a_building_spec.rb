require 'spec_helper'

feature 'add a building', %Q{
  As a real estate associate
  I want to record a building
  So that I can refer back to pertinent information
} do


  #Acceptance Criteria:

  #    I must specify a street address, city, state, and postal code
  #    Only US states can be specified
  #    I can optionally specify a description of the building
  #    If I enter all of the required information in the required format, the building is recorded.
  #    If I do not specify all of the required information in the required formats, the building is not recorded and I am presented with errors
  #    Upon successfully creating a building, I am redirected so that I can record another building.

scenario 'create a valid building' do
  prev_count = Building.count
  visit 'buildings/new'

  fill_in 'building_address',
  with: '101 Huntington AVE'

  fill_in 'building_city',
  with: 'Boston'

  fill_in 'building_state',
  with: 'MA'

  fill_in 'building_postcode',
  with: '02199'

  fill_in 'building_description',
  with: ''

  click_button 'Add Building'
  expect(page).to have_content('Building created.')
  expect(Building.count).to eql(prev_count +1)
  expect(page).to have_content('101 Huntington AVE')
end

#scenario 'create an invalid building' do
end
