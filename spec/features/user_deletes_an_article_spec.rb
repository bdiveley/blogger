require 'rails_helper'

describe 'user deletes an article' do
  describe 'they link from the show page' do
    it 'displays all articles without the deleted entry' do

      article = Article.create(title: "Article Title", body: "Article Body")
      article_2 = Article.create(title: "Another Article", body: "Another Body")

      visit article_path(article)
      click_link "Delete"

      expect(current_path).to eq(articles_path)
      expect(page).not_to have_content(article.title)
      expect(page).to have_content(article_2.title)
    end
  end
end
