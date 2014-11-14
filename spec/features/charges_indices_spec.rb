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

  # scenario 'new charge', js: true do
  # 	visit new_charge_path
  # 	fill_in "charge_amount", :with => 12
  #   # find(:xpath, "//input[@id='charge_amount']").set "12"
  # 	# # select "Company_A", :from => "chargeables"
  # 	# find(:select, "chargeables").find(:option, "3_user").select_option
  # 	# click_button "Create Charge"
  #   # expect(page).to have_content('Charge was successfully created.')
  # end
end
