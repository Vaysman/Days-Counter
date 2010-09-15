#encoding: UTF-8
Feature: Landing page
  In order to using the site
  As a site user
  I want to see landing page of site

  Scenario: Browse landing page
    Given I have browser started
    When I go to the home page
    Then I should see "Username"
    And I should see "Password"
    And I should see "Log in"