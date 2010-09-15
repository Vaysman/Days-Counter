Given /^I am newly registered user with login '([^']+)' and password '([^']+)'$/ do |login, password|
  @user = User.create!(
          :username => login,
          :password => password,
          :password_confirmation => password,
          :email => login + '@test.com')
end

When /^I logged in with login '([^']+)' and password '([^']+)'$/ do |login, password|
  visit '/login'
  fill_in('Username', :with => login)
  fill_in('Password', :with => password)
  click_button 'Log In'
  response.should contain('Logged in successfully')
end