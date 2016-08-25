require 'rails_helper'

feature 'create new user' do
  scenario 'goes to new registration page' do
    visit '/'

    click_link('sign up')

    expect(page).to have_content("Get ready to play!")
  end

  scenario 'create accout' do
    visit '/users/new'

    fill_in 'first_name', with: 'John'

    fill_in'email', with: 'john@doe.com'

    fill_in('password', with: 'password')

    click_link('submit')

    expect(page).to have_content("Welcome")
  end
end
