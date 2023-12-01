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
#TODO Add expected search results (might need Faraday)
Then I should see "CampaignFinance#search"

  