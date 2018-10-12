require 'rails_helper'

describe 'user sees all articles' do
  describe 'they visit /articles' do
    it 'displays all articles' do
      article_1 = Article.create!(title: "title 1", body: "body 1")
      article_2 = Article.create!(title: "title 2", body: "body 2")

      visit articles_path

      expect(page).to have_link(article_1.title)
      expect(page).to have_link(article_2.title)
      expect(page).to have_link("Create New Article")
    end
  end
end
