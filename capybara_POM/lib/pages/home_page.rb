require 'capybara/dsl'

class Homepage
  include Capybara::DSL
  #Constants
  #PageObjects
  HOME_PAGE_URL = 'https://www.bbc.co.uk/'
  SIGN_IN_FIELD = '#idcta-username'

  def visit_home_page
    visit(HOME_PAGE_URL)
  end

  def current_url
    page.current_url
  end

  def sign_in
    find(SIGN_IN_FIELD).click
  end

end
