require 'spec_helper'

describe "User" do
  it "can login" do
    login_as_user
    page.should have_link("Logout")
  end
  
  it "can logout" do
    login_as_user
    click_link("Logout")
    page.should have_button("Sign In")
  end
end
