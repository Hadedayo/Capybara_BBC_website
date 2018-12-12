require 'capybara/dsl'

class Registration
  include Capybara::DSL
  #Constants
  #PageObjects
  EMAIL_OR_USERNAME_FIELD = 'user-identifier-input'
  SIGN_IN_BUTTON = '#submit-button'
  NO_MATCH_TEXT_FOR_USERNAME_FIELD = '#form-message-general'
  PASSWORD_FIELD = 'password-input'
  EMPTY_TEXT_FOR_USERNAME_FIELD = 'div#form-message-username.form-message.form-message—error.form-message—username.field__error'
  PASSWORD_ERROR_FIELD = 'div#form-message-username.form-message.form-message—error.form-message—password.field__error'


  def current_url
    page.current_url
  end

  def fill_in_email_or_username_field(text)
    fill_in(EMAIL_OR_USERNAME_FIELD, :with => text)
  end

  def click_sign_in
    find(SIGN_IN_BUTTON).click
  end

  def refresh_page
    current_url.refresh
  end

  def get_error_message_no_match
    find(NO_MATCH_TEXT_FOR_USERNAME_FIELD).text
  end

  def get_error_message_for_empty_username
    find(EMPTY_TEXT_FOR_USERNAME_FIELD).text
  end

  def fill_in_password_field(text)
    fill_in(PASSWORD_FIELD, :with => text)
  end

  def get_error_message_for_password
    find(PASSWORD_ERROR_FIELD).text
  end

end
