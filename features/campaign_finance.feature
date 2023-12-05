Feature: Search for Campaign Finances

  As a user interested in finances, 
  so that I can easily filter the campaign finance records, 
  I want to be able search for finances by selecting the cycle and category from a dropdown.

Background: 

Scenario: Searching for Campaign Finance
  When I am on the campaign_finance page
  Then I should see "Search for Campaign Finances"
  When I select "2010" from "search_terms_cycle"
  And I select "candidate-loan" from "search_terms_category"
  And I press "Search"
  Then I should see "MCMAHON, LINDA"
  And I should see "REP"
  And I should see "CT"
  And I should see "110694.0"

Scenario: Accessing Campaign Finance from navbar
  When I am on the home page
  Then I should see "Campaign Finance"
  When I follow "link-/campaign_finance"
  Then I should see "Search for Campaign Finances"
