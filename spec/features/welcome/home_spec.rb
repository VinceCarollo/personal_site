require 'rails_helper'

RSpec.describe "As a visitor on the home page" do 
    it 'has a link to the blog' do 
        visit root_path

        click_link "Blog"
        
        expect(current_path).to eq(articles_path)
    end
end