require_relative 'pages/home_page'
require_relative 'pages/login_page'

class BbcSite

  def home_page_bbc_site
    Homepage.new
  end

  def login_page_bbc_site
    Loginpage.new
  end

end
