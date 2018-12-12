require 'capybara/dsl'

class Registration
  include Capybara::DSL
  #Constants
  #PageObjects
  HOME_PAGE_URL = 'https://www.bbc.co.uk/'
  SIGN_IN_FIELD = 'idcta-link'

  def visit_home_page
    visit(HOME_PAGE_URL)
  end

  def go_to_sign_in_page

  end


end
