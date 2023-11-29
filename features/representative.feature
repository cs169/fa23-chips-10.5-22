Feature: Access news stories and manipulate them

  As a user of actionmap
  So that I can learn more about elected officials
  I want to be able to search for them effectively

Background:

Scenario: Searching error
  When I am on the representatives page
  And I press "commit"
  Then I should see "No address provided."
