require 'spec_helper'

feature 'Manage Poptarts' do
  scenario 'User can create and view list of poptart flavors' do
    visit '/'
    expect(page).to have_content 'Welcome'
    click_on 'Add Poptarts'
    fill_in 'Flavor', with: 'blueberry'
    fill_in 'Topping', with: 'icing'
    click_on 'Create Poptarts'
    expect(page).to have_content 'blueberry'
    expect(page).to have_content 'iceing'
  end
end