require 'rails_helper'

feature 'create new user' do
  scenario 'goes to new registration page' do
    visit '/'

    click_link('sign up')

    expect(page).to have_content("Get ready to play!")
  end

  scenario 'create accout' do
    visit '/users/new'

    fill_in 'user_first_name', with: 'John'

    fill_in 'user_last_name', with: 'John'

    fill_in'user_email', with: 'john@doe.com'

    fill_in'user_phone', with: '555-555-5555'

    fill_in 'user_password', with: 'password'

    click_button('Create User')

    expect(page).to have_content("Welcome")
  end
end
