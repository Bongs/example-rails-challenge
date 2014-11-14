require 'rails_helper'

feature "check lists" do
  scenario 'failed list' do
  	visit root_path
  	expect(page).to have_content('Failed Charges')
  end
  scenario 'disputed list' do
  	visit root_path
  	expect(page).to have_content('Disputed Charges')
  end
  scenario 'success list' do
  	visit root_path
  	expect(page).to have_content('Successful Charges')
  end
end
