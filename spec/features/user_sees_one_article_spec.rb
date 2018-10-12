require 'rails_helper'

describe 'user sees one article' do
  describe 'they link from the articles index' do
    it 'displays information for one article' do
      article_1 = Article.create!(title: "title 1", body: "body 1")
      article_2 = Article.create!(title: "title 2", body: "body 2")

      visit articles_path
      click_link article_1.title

      expect(page).to have_content(article_1.title)
      expect(page).to have_content(article_1.body)
      expect(page).to have_link("Back to Articles List")
    end
  end
end
