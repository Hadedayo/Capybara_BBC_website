describe 'signing in and completing the registration form for the bbc website' do

  context 'it should show success message when complete' do

    it "should show confirmation message once the the form is filled in correctly" do
      @bbc_site_service = BbcSite.new
      @bbc_site_service.home_page_bbc_site.visit_home_page
      @bbc_site_service.home_page_bbc_site.sign_in
      expect(@bbc_site_service.home_page_bbc_site.current_url).to eq 'https://account.bbc.com/signin'
      
      @bbc_site_service.login_page_bbc_site.fill_in_email_or_username_field('')
      @bbc_site_service.login_page_bbc_site.click_sign_in
      expect(@bbc_site_service.login_page_bbc_site.get_error_message_no_match).to eq "Sorry, those details don't match. Check you've typed them correctly."

      @bbc_site_service.home_page_bbc_site.visit_home_page
      @bbc_site_service.home_page_bbc_site.sign_in
      @bbc_site_service.login_page_bbc_site.fill_in_email_or_username_field('de')
      sleep 3
      @bbc_site_service.login_page_bbc_site.click_sign_in
      sleep 3
      expect(@bbc_site_service.login_page_bbc_site.get_error_message_no_match).to eq "Sorry, those details don't match. Check you've typed them correctly."

      @bbc_site_service.home_page_bbc_site.visit_home_page
      @bbc_site_service.home_page_bbc_site.sign_in
      @bbc_site_service.login_page_bbc_site.fill_in_password_field('')
      sleep 3
      @bbc_site_service.login_page_bbc_site.click_sign_in
      sleep 3
      expect(@bbc_site_service.login_page_bbc_site.get_error_message_no_match).to eq "Sorry, those details don't match. Check you've typed them correctly."

      @bbc_site_service.home_page_bbc_site.visit_home_page
      @bbc_site_service.home_page_bbc_site.sign_in
      @bbc_site_service.login_page_bbc_site.fill_in_password_field('')
      sleep 3
      @bbc_site_service.login_page_bbc_site.click_sign_in
      sleep 3
      expect(@bbc_site_service.login_page_bbc_site.get_error_message_for_password).to eq "Sorry, those details don't match. Check you've typed them correctly."


            # @bbc_site_service.login_page_bbc_site.fill_in_password_field

      sleep 3
    end
  end
end
