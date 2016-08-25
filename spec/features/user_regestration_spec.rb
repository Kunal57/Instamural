require 'rails_helper'

feature 'create new user' do
  scenario 'goes to new registration page' do
    visit '/'

    click_link('Register')

    expect(page).to have_content("Register for new account")
  end

  scenario 'create accout' do
    visit '/users/new'

    fill_in 'username', with: 'John'

    fill_in('email', with: 'Doe')

    fill_in('password', with: 'helloworld')

    click_link('Register')

    expect(page).to have_content("Your rad playlist!")
  end
end
