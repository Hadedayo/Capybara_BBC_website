describe 'signing in and completing the registration form for the bbc website' do

  context 'it should show correct error messages for valid/invalid fields' do

    it "should show error message for invalid email and a valid password" do
      @bbc_site = BbcSite.new
      @bbc_site.home_page_bbc_site.visit_home_page_bbc
      @bbc_site.home_page_bbc_site.sign_in_on_bbc_site
      @bbc_site.login_page_bbc_site.fill_in_email_or_username_field('abc123gurney@hotmail.co.uk')
      @bbc_site.login_page_bbc_site.fill_in_password_field('test12345678')
      @bbc_site.login_page_bbc_site.click_sign_in_button
      expect(@bbc_site.login_page_bbc_site.get_error_text_for_invalid_email_valid_password).to eq @bbc_site.login_page_bbc_site.error_for_incorrect_email_valid_password
    end

    it "should show error message for valid email and an invalid password" do
      @bbc_site = BbcSite.new
      @bbc_site.home_page_bbc_site.visit_home_page_bbc
      @bbc_site.home_page_bbc_site.sign_in_on_bbc_site
      @bbc_site.login_page_bbc_site.fill_in_email_or_username_field('troy@hotmail.co.uk')
      @bbc_site.login_page_bbc_site.fill_in_password_field('smilebaby123')
      @bbc_site.login_page_bbc_site.click_sign_in_button
      expect(@bbc_site.login_page_bbc_site.get_error_text_for_valid_email_invalid_password).to eq @bbc_site.login_page_bbc_site.error_for_valid_email_invalid_password
    end

  end
end
