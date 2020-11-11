# frozen_string_literal: true

feature 'Visitor can write an article' do
  before do
    visit root_path
    click_on 'Write an Article'
  end

  it 'is expected to be saved in the database' do
    fill_in 'Title', with: 'Another greate demo from Thomas'
    fill_in 'Content', with: 'Learning Rails just became easier....'
    click_on 'Create Article'
    expect(Article.count).to eq 1
  end
end
