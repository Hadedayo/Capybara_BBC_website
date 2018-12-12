require 'capybara/dsl'

class Loginpage
  include Capybara::DSL

  attr_accessor :error_for_no_match, :error_for_incorrect_email_valid_password, :error_for_valid_email_invalid_password

  def initialize
    @error_for_no_match = "Sorry, those details don't match. Check you've typed them correctly."
    @error_for_incorrect_email_valid_password = "Sorry, we can’t find an account with that email. You can register for a new account or get help here."
    @error_for_valid_email_invalid_password = "Uh oh, that password doesn\u2019t match that account. Please try again."

  end
  #Constants
  #PageObjects
  EMAIL_OR_USERNAME_FIELD = 'user-identifier-input'
  SIGN_IN_BUTTON = '#submit-button'
  NO_MATCH_TEXT_FOR_USERNAME_FIELD = '#form-message-general'
  PASSWORD_FIELD = 'password-input'
  EMPTY_TEXT_FOR_USERNAME_FIELD = 'div#form-message-username.form-message.form-message—error.form-message—username.field__error.form-message__text'

  INVALID_EMAIL_VALID_PASSWORD_TEXT = '#form-message-username'

  VALID_EMAIL_INVALID_PASSWORD_TEXT = '#form-message-password'


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

  def get_error_text_for_invalid_email_valid_password
    find(INVALID_EMAIL_VALID_PASSWORD_TEXT).text
  end

  def get_error_text_for_valid_email_invalid_password
    find(VALID_EMAIL_INVALID_PASSWORD_TEXT).text
  end

end
