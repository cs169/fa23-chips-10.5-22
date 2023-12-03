Feature: Access and manipulate the events feature

  As a user of actionmap
  So that I can become more involved in events happening in my community
  I want to be able to create and access events through actionmap

Scenario: Access events page
  When I am on the home page
  And I follow "Events"
  Then I should see "Pride Parade"
  And I should see "Climate Strike"

Scenario: Add event
  When I am on the events page
  Then I should see "Add New Event"
  When I follow "Add New Event"
  Then I should see "New event"
  When I fill in "event_name" with "Secret event"
  And I fill in "event_description" with "you can't know"
  And I select "Nevada" from "actionmap-event-state"
  And I select "Clark County" from "actionmap-event-county"
  And I select "2024" from "event_start_time_1i"
  And I select "June" from "event_start_time_2i"
  And I select "15" from "event_start_time_3i"
  And I select "10" from "event_start_time_4i"
  And I select "15" from "event_start_time_5i"
  And I select "2024" from "event_end_time_1i"
  And I select "June" from "event_end_time_2i"
  And I select "16" from "event_end_time_3i"
  And I select "10" from "event_end_time_4i"
  And I select "15" from "event_end_time_5i"
  And I press "commit"
  Then I should see "Event was successfully created."
  And I should see "Secret event"
  And I should see "you can't know"
  When I follow "view-Secret event"
  Then I should see "Secret event"