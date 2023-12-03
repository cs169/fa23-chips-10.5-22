Feature: Using the Map

  As a user of actionmap
  So that I can use its features on places whose addresses I do not know
  I want to click on a county on the map and see a list of representatives for that county

#NOTE: https://edstem.org/us/courses/44071/discussion/3898372
# clicking the map is not necessarily practicable but that is okay
@load-seed-data
Scenario: Basic map views
  When I am on the state CA page
  And I press "Counties in California"
  Then I should see "Alameda County"
  When I follow "view-Alameda County"
  Then I should see "Alysse Castro"

@load-seed-data
Scenario: Basic map views 2
  When I am on the state NV page
  And I press "Counties in Nevada"
  Then I should see "Clark County"
  When I follow "view-Clark County"
  Then I should see "Steve Wolfson"
  When I follow "Steve Wolfson"
  Then I should see "200 Lewis Avenue"
