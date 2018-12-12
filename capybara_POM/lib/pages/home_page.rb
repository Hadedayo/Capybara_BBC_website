require 'capybara/dsl'

class Homepage
  include Capybara::DSL

  HOME_PAGE_URL = 'https://www.bbc.co.uk/'
  SIGN_IN_FIELD = '#idcta-username'

  def visit_home_page_bbc
    visit(HOME_PAGE_URL)
  end

  def sign_in_on_bbc_site
    find(SIGN_IN_FIELD).click
  end

end
