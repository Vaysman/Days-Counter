#encoding: UTF-8
# 
Feature: Authentication
  In order to provide privacy
  As paranoid
  I want use authentication system

  @wip
  Scenario: Login user with good credential
    Given user exists with username: "kate", email: "kate@example.com", password: "katepass", password_confirmation: "katepass"
    When I go to the home page
    Then I should see "You must be logged in to access this page"
    When I logged in with login 'kate' and password 'katepass'
    Then I should see "180"
#    When I fill in the following:
#      | Username | kate     |
#      | Password | katepass |
#    And I press "Log in"
#    Then I should see "Logged in successfully."
#    And I should see "180"

  Scenario: Login user with bad credential

  Scenario: Create new user
