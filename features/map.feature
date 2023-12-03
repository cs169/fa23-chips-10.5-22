Feature: Using the Map

  As a user of actionmap
  So that I can use its features on places whose addresses I do not know
  I want to click on a county on the map and see a list of representatives for that county

@load-seed-data
@javascript
Scenario: Basic map clicking
  When I am on the home page
  Then show me the page
  And I press map "California"
