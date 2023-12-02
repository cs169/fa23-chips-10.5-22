Feature: Access news stories and manipulate them

  As an user of actionmap
  So that I can learn more about elected officials
  I want to be able to view and interact with news about them

Background:
  When I am on the login page
  Then I should see "Select an authentication provider below to login."
  Then I should see "Sign in with Google"
  And I should see "Sign in with GitHub"
  And I press "Sign in with Google"
  When I am on the login page
  Then I should see "Your Profile"

Scenario: Accessing news
  When I am on the representatives page
  And I fill in "address" with "Las Vegas"
  And I press "commit"
  Then I should see "Carolyn G. Goodman"
  And I follow "news-Carolyn G. Goodman"
  Then I should see "Listing News Articles for"
  And I should see "Carolyn G. Goodman"

Scenario: adding news
  When I am on the representatives page
  And I fill in "address" with "Las Vegas"
  And I press "commit"
  Then I should see "Carolyn G. Goodman"
  And I follow "news-Carolyn G. Goodman"
  Then I should see "Listing News Articles for"
  And I should see "Carolyn G. Goodman"
  Then I follow "Add News Article"
  And I should see "Edit news article"
  When I fill in "news_item_title" with "A"
  And I fill in "news_item_link" with "B"
  And I fill in "news_item_description" with "Description of article"
  And I select "Carolyn G. Goodman" from "news_item_representative_id"
  And I press "commit"
  Then I should see "News item was successfully created."
  When I follow "View all articles"
  Then I should see "Description of article"

Scenario: Adding news article with issue
  When I am on the representatives page
  And I fill in "address" with "Austin"
  And I press "commit"
  Then I should see "Ted Cruz"
  And I follow "news-Ted Cruz"
  Then I should see "Listing News Articles for"
  And I should see "Ted Cruz"
  Then I follow "Add News Article"
  And I should see "Edit news article"
  When I fill in "news_item_title" with "Ted Cruz did something crazy"
  And I fill in "news_item_link" with "https://www.tedcruz.com"
  And I fill in "news_item_description" with "Description of Ted Cruz doing somethin crazy"
  And I select "Ted Cruz" from "news_item_representative_id"
  And I select "Terrorism" from "news_item_issues"
  And I press "commit"
  Then I should see "News item was successfully created."
  And I should see "Terrorism"

Scenario: User should see issue column after a news article with an issue is added
  When I am on the representatives page
  And I fill in "address" with "Dallas"
  And I press "commit"
  Then I should see "Ted Cruz"
  And I follow "news-Ted Cruz"
  Then I should see "Listing News Articles for"
  And I should see "Ted Cruz"
  Then I follow "Add News Article"
  And I should see "Edit news article"
  When I fill in "news_item_title" with "Example"
  And I fill in "news_item_link" with "https://www.tedcruz.com"
  And I fill in "news_item_description" with "Description of Ted Cruz doing somethin in Texas"
  And I select "Ted Cruz" from "news_item_representative_id"
  And I select "Immigration" from "news_item_issues"
  And I press "commit"
  Then I should see "News item was successfully created."
  When I follow "View all articles"
  And I should see "Immigration"
