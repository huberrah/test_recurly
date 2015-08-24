Given(/^I am at Recurly Log In Page$/) do
  @browser.goto "https://app.recurly.com/login"
end

When(/^I enter valid email credentials "([^"]*)" field$/) do |email|
  @browser.text_field(:id => "user_email").set(email)
end

When(/^I enter valid password credentials "([^"]*)" field$/) do |password|
  @browser.text_field(:id => "user_password").set(password)
end

When(/^I press log in button$/) do
  @browser.button(:name => "commit").click
end

When(/^I navigate to Accounts Summary$/) do

  @browser.link(:text =>"View the old version of this page").click
  @browser.link(:text =>"Accounts").click
  
end

Then(/^I should see the accounts page$/) do
  @browser.url.should include "accounts"
  @browser.text.should include "Accounts"
end

#To do :  associate the num with dynamic count of accounts from recurly obj

Then(/^I should see the accounts$/) do
@browser.span(:class => "filter_total").wait_until_present
@browser.span(:class => "filter_total").text.should eql("#{$iNewNumberAccounts}")    
end







