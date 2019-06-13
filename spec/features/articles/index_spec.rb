require 'rails_helper'

RSpec.describe 'As a visitor after clicking on blog' do

    before :each do
        @article_1 = Article.create(title: "Article Title 1", description: 'Article Description 1')
        @article_2 = Article.create(title: "Article Title 2", description: 'Article Description 2')
        @article_3 = Article.create(title: "Article Title 3", description: 'Article Description 3')
    end

    it 'displays all articles' do
        visit articles_path

        within "#article-#{@article_1.id}" do
          expect(page).to have_content(@article_1.title)
          expect(page).to have_content(@article_1.description)
        end

        within "#article-#{@article_2.id}" do
          expect(page).to have_content(@article_2.title)
          expect(page).to have_content(@article_2.description)
        end

        within "#article-#{@article_3.id}" do
          expect(page).to have_content(@article_3.title)
          expect(page).to have_content(@article_3.description)
        end
    end

end
