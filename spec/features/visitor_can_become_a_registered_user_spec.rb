# frozen_string_literal: true

feature 'Visitor can become a registered user' do
  context 'by sending of a valid form' do
    before do
      visit root_path
      click_on 'Create Account'
      fill_in 'Email', with: 'thomas@craft.com'
      fill_in 'Password', with: 'password'
      fill_in 'Password confirmation', with: 'password'
      click_on 'Sign up'
    end
    it 'is expected to re-route to root path' do
      expect(current_path).to eq root_path
    end

    it 'is expected to display a welcome message' do
      expect(page).to have_content 'Welcome! You have signed up successfully.'
    end
  end
end
