require 'capybara/dsl'

class Loginpage
  include Capybara::DSL

  attr_accessor :error_for_incorrect_email_valid_password, :error_for_valid_email_invalid_password

  def initialize
    @error_for_incorrect_email_valid_password = "Sorry, we can’t find an account with that email. You can register for a new account or get help here."

    @error_for_valid_email_invalid_password = "Uh oh, that password doesn\u2019t match that account. Please try again."

  end

  EMAIL_OR_USERNAME_INPUT_FIELD = 'user-identifier-input'
  SUBMIT_BUTTON = '#submit-button'
  PASSWORD_INPUT_FIELD = 'password-input'
  FORM_MESSAGE_USERNAME_TEXT = '#form-message-username'
  FORM_MESSAGE_PASSWORD_TEXT = '#form-message-password'

  def fill_in_email_or_username_field(text)
    fill_in(EMAIL_OR_USERNAME_INPUT_FIELD, :with => text)
  end

  def fill_in_password_field(text)
    fill_in(PASSWORD_INPUT_FIELD, :with => text)
  end

  def click_sign_in_button
    find(SUBMIT_BUTTON).click
  end

  def get_error_text_for_invalid_email_valid_password
    find(FORM_MESSAGE_USERNAME_TEXT).text
  end

  def get_error_text_for_valid_email_invalid_password
    find(FORM_MESSAGE_PASSWORD_TEXT).text
  end

end
