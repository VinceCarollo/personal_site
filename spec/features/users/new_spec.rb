require 'rails_helper'

RSpec.describe "As a user attempting to register" do

  it "creates a user" do
    visit new_user_path

    fill_in "Username", with: 'vince'
    fill_in "Email", with: 'vince@test.com'
    fill_in "Password", with: 'pass'
    fill_in "Password confirmation", with: 'pass'

    click_button "Register"

    user = User.last
    expect(current_path).to eq(root_path)
    expect(page).to have_content("Successfully Registered")
    expect(user.username).to eq("vince")
  end

  it "cant create same user twice" do
    visit new_user_path

    fill_in "Username", with: 'vince'
    fill_in "Email", with: 'vince@test.com'
    fill_in "Password", with: 'pass'
    fill_in "Password confirmation", with: 'pass'

    click_button "Register"

    visit new_user_path

    fill_in "Username", with: 'vince'
    fill_in "Email", with: 'vince2@test.com'
    fill_in "Password", with: 'pass'
    fill_in "Password confirmation", with: 'pass'

    click_button "Register"

    user = User.last
    expect(user.email).to_not eq("vince2@test.com")
    expect(page).to have_content("Username has already been taken")
  end

  it "cant create a user with unmatching passwords" do
    visit new_user_path

    fill_in "Username", with: 'vince'
    fill_in "Email", with: 'vince2@test.com'
    fill_in "Password", with: 'pass'
    fill_in "Password confirmation", with: 'passss'

    click_button "Register"

    expect(User.last).to be nil
    expect(page).to have_content("Password confirmation doesn't match")
  end

end
