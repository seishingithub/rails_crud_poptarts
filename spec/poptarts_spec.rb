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
    expect(page).to have_content 'icing'
  end

  scenario 'User can edit and update list of poptart flavors' do
    visit '/'
    click_on 'Add Poptarts'
    fill_in 'Flavor', with: 'blueberry'
    fill_in 'Topping', with: 'icing'
    click_on 'Create Poptarts'
    expect(page).to have_content 'blueberry'
    expect(page).to have_content 'icing'
    click_on 'blueberry'
    expect(page).to have_content 'blueberry'
    expect(page).to have_content 'icing'
    click_on 'Edit'
    fill_in 'Flavor', with: 'cinnamon'
    fill_in 'Topping', with: 'brown sugar'
    click_on 'Create'
    expect(page).to have_content 'cinnamon'
    expect(page).to have_content 'brown sugar'
  end
end