def sign_up
    visit new_user_registration_path

    fill_in :user_email, :with => 'user@tester.com'
    fill_in :user_username, :with => 'mike123'
    fill_in :user_password, :with => 'secure123!@#'
    fill_in :user_password_confirmation, :with => 'secure123!@#'

    click_button I18n.t('buttons.sign_up')
end
