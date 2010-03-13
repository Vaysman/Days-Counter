#language: en
Feature: Login Page
  For privacy
  as Users
  I want identificate and authenticate myself

  Scenario: Get login page
    Given There is no users sing up  
    When I go to the homepage 
    Then I should see "ame"
    And I should see "assword"

#  Scenario: Scenario 2
#    Given
#    When
#    Then
