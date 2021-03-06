#encoding: UTF-8
Feature: Counting days
  Counting of days of stay abroad is really tedious
  As travelers who frequently go abroad
  I wants help with counting of days

  Scenario: Get information about how many days should be abroad
    Given I am newly registered user with login 'kate' and password 'kate_password' 
    And I am logged in with login 'kate' and password 'kate_password'
    When I go to the show counter page
    Then I should see "180"

  Scenario: Add date when go out the home country
    Given I am newly registered user with login 'kate' and password 'kate_password'
    And I am logged in with login 'kate' and password 'kate_password'
    When I go to the show counter page
    And I should see "180"
    And I press "Out"
    Then I should see "180-1"

  #  Scenario: Delete counter
#    Given the following counters:
#      ||
#      ||
#      ||
#      ||
#      ||
#    When I delete the 3rd counter
#    Then I should see the following counters:
#      ||
#      ||
#      ||
#      ||
