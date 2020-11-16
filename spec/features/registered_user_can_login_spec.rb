# frozen_string_literal: true

feature 'Registered User can log in' do
  let!(:user) { create(:user, email: 'user@domain.com', password: 'password') }

  context 'by providing valid credentials' do
    before do
      visit root_path
      click_on 'Login'
      fill_in 'Email', with: 'user@domain.com'
      fill_in 'Password', with: 'password'
      click_on 'Log in'
    end
    it 'is expected to re-route to root path' do
      expect(current_path).to eq root_path
    end

    it 'is expected to display a success message' do
      expect(page).to have_content 'Signed in successfully.'
    end

  end
end
