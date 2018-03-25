require 'rails_helper'

feature 'User system' do

  describe "login" do

    scenario "login page has signup, remember me, and forgot your password" do
      visit new_user_session_path
      expect(page).to have_content "Remember me"
      expect(page).to have_link "Sign up", href: new_user_registration_path
      expect(page).to have_link "Forgot your password?", href: new_user_password_path
    end

    scenario "user can login" do
      user = create(:user)
      login(user)
      expect(page).to have_current_path(root_path)
    end

    scenario "show error when use wrong email" do
      user = create(:user)
      user.email = "nottherealemail"
      login(user)

      expect(page).to have_current_path(new_user_session_path)
      expect(page).to have_content "Invalid Email or password"
    end

  end

  context "Sign up" do

    scenario "User will get notification after sign up" do
      user = build(:user)
      sign_up(user)

      expect(page).to have_current_path(root_path)
      expect(page).to have_content "Welcome! You have signed up successfully."
    end

    scenario "User will get errors if doesn't put email" do
      user = build(:user, email: '')
      sign_up(user)

      expect(page).to have_content "Email can't be blank"
    end

    scenario "User will get errors if doesn't put password" do
      user = build(:user, password: '')
      sign_up(user)

      expect(page).to have_content "Password can't be blank"
    end

    scenario "User will get errors if doesn't put citizen_id" do
      user = build(:user, citizen_id: '')
      sign_up(user)

      expect(page).to have_content "Citizen can't be blank"
    end

  end

end
