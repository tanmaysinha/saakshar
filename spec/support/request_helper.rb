def login_as(email, password)
  visit logout_path
  visit root_path
  fill_in("email", :with => email)
  fill_in("password", :with => password)
  click_button "Sign In"
  @user = User.find_by_email(email)
end

def login_as_user
  login_as("test@test.com", "test") 
end
