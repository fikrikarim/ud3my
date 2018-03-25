module LoginMacros

  def login(user)
    visit root_path
    click_link 'Login'

    expect(current_path).to eq new_user_session_path
    fill_in 'user_email', with: user.email
    fill_in 'user_password', with: user.password

    find_button('Log in').click
  end

  def sign_up(user)
    visit new_user_registration_path

    fill_in 'user_first_name', with: user.first_name
    fill_in 'user_last_name', with: user.last_name
    fill_in 'user_email', with: user.email
    fill_in 'user_citizen_id', with: user.citizen_id
    fill_in 'user_student_id', with: user.student_id
    fill_in 'user_password', with: user.password
    fill_in 'user_password_confirmation', with: user.password

    click_button 'Sign up'
  end
end
