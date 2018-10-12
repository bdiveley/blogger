require 'rails_helper'

describe 'user creates new article' do
  describe 'they link from the articles index' do
    describe 'they fill in a title and body' do
      it "creates a new article" do
        article_1 = Article.create!(title: "title 1", body: "body 1")
        article_2 = Article.create!(title: "title 2", body: "body 2")

        visit articles_path
        click_link "Create New Article"

        expect(current_path).to eq(new_article_path)
        fill_in "article[title]", with: "New title!"
        fill_in "article[body]", with: "New body!"
        click_on "Create Article"

        expect(page).to have_content("New title!")
        expect(page).to have_content("New body!")
      end
    end
  end
end
