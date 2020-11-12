# frozen_string_literal: true

feature 'Visitor can' do
  context 'edit an article' do
    let(:article) { create(:article, title: 'Some crispy news', content: 'This is very bad content') }
    before do
      visit article_path(article)
      click_on 'Edit this Article'
    end

    it 'to change the content' do
      fill_in 'Content', with: 'It is almost friday and we have a graduation on saturday, yey!'
      click_on 'Update Article'
      expect(page).to have_content 'It is almost friday and we have a graduation on saturday, yey!'
    end
  end
end
