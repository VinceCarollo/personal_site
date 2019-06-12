require 'rails_helper'

RSpec.describe 'As a visitor logging in' do

  before :each do
    @user = User.create!(username: 'vince', email: 'vince@test.com', password: 'pass')
  end

  it 'logs a registered user in' do
    visit login_path

    fill_in "Username", with: 'vince'
    fill_in "Password", with: 'pass'

    click_button "Login"

    expect(current_path).to eq(root_path)
    expect(page).to have_content("You are now logged in")
  end

  it 'cant login with incorrect password' do
    visit login_path

    fill_in "Username", with: 'vince'
    fill_in "Password", with: 'pass2'

    click_button "Login"

    expect(current_path).to eq(login_path)
    expect(page).to have_content("Incorrect username/password combonation")
  end

end
