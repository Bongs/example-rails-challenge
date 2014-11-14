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

  scenario 'number of failed charges' do
  	Charge.failed.count == 5
  end
  scenario 'number of disputed charges' do
  	Charge.disputed.count == 3
  end
  scenario 'number of successful charges' do
  	Charge.successful.count == 13
  end
end
