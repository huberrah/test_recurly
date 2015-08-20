Feature: Verifying Account

As a recurly user
I want to log in
So that page properly displays with correct account numbers

Scenario Outline: Logging into Recurly
Given I am at Recurly Log In Page
When I enter valid email credentials "<email>" field
And I enter valid password credentials "<password>" field
When I press log in button
And I navigate to Accounts Summary
Then I should see the <"accounts"> page
And I should see the <"num"> accounts

#To do - dynamically create recurly object to retrieve number of accounts associated
Examples:
| email | password |accounts|num|
|dermeister11@hotmail.com | password1| accounts|0|
