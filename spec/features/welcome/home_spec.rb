require 'rails_helper'

RSpec.describe "As a visitor on the home page" do

    it 'has a link to the blog' do
        visit root_path

        click_link "Blog"

        expect(current_path).to eq(articles_path)
    end

    it "has a link to register" do
      visit root_path

      click_link "Register"

      expect(current_path).to eq(new_user_path)
    end

    it "has a link to Login" do
      visit root_path

      click_link "Login"

      expect(current_path).to eq(login_path)
    end
end
