require_relative 'pages/home_page'
require_relative 'pages/login_page'

class BbcSite

  def home_page_bbc_site
    NavigateToSigninPage.new
  end

  def login_page_bbc_site
    Registration.new
  end

end
