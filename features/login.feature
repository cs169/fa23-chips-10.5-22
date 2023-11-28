Feature: login to your github or google account

  As an user
  So that I can save my searches
  I want to be able to login to my google or github account

Background: 

Scenario: logging in 
  When I am on the login page
  # your steps here
  Then I should see "Select an authentication provider below to login."
  Then I should see "Sign in with Google"
  And I should see "Sign in with GitHub"
  And I press "Sign in with Google"
  When I am on the login page
  Then I should see "Your Profile"

Scenario: Already Logged in 
  When I am on the login page
  # your steps here
  Then I should see "Select an authentication provider below to login."
  Then I should see "Sign in with Google"
  Then I should see "Sign in with GitHub"
  And I press "Sign in with GitHub"
  When I am on the login page
  Then I should see "Your Profile"
  Then I should see "You are already logged in. Logout to switch accounts."

Scenario: logging out
  When I am on the logout page
  # your steps here 
  Then I should see "You have successfully logged out."