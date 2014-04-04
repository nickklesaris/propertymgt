require 'spec_helper'

feature 'add an owner', %Q{As a real estate associate
  I want to record a building owner
  So that I can keep track of our relationships with owners
  } do

#Acceptance Criteria:
#
#   I must specify a first name, last name, and email address
#   I can optionally specify a company name
#   If I do not specify the required information, I am presented with errors
#   If I specify the required information, the owner is recorded and I am redirected to enter another new owner

scenario 'create a valid owner' do
  prev_count = Owner.count
  visit 'owners/new'

  fill_in 'owner_first_name',
  with: 'John'

  fill_in 'laste_name',
  with: 'Doe'

  fill_in 'email',
  with: 'john.doe@gmail.com'

  fill_in 'company',
  with: ''

  click_button 'Add Owner'
  expect(page).to have_content('Owner created.')
  expect(Owner.count).to eql(prev_count +1)
  expect(page).to have_content('john.doe@gmail.com')
end

#scenario 'create an invalid building' do

end
