Feature: Display Representatives on County Click

  As a user of the application
  I want to click on a county on the map
  And see a list of representatives for that county

  Background: 
    Given the application has loaded the national map with counties
    And I click on a state

  Scenario: User clicks on a county and sees its representatives
    Given I am on a state map page
    When I click on a county with the FIPS code "12345"
    Then I should be redirected to the search page
    And I should see representatives for county "12345"
