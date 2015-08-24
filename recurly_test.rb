require 'rubygems'
require 'recurly'

Recurly.subdomain      = 'test-rhuber'
Recurly.api_key        = '516102c4c9e2488094b4f14033791fd1'

# To set a default currency for your API requests:
Recurly.default_currency = 'USD'

puts 'Script successful' 

account = Recurly::Account.create(
  :account_code => '1',
  :email        => 'testcompany@testcompany.com',
  :first_name   => 'TestName',
  :last_name    => 'TestLastName',
  :billing_info => 'http://api.test.host/v2/accounts/1/billing_info'
)


begin
  #if account does not exist, a NotFound Error will be thrown
  account = Recurly::Account.find '1'

  #subscription will fail because a plan_code is not set
  subscription = Recurly::Subscription.create!(:account => account)
rescue Recurly::Resource::NotFound => e
  puts e.message
  
rescue Recurly::API::UnprocessableEntity => e
  puts e.message
else
  puts "Successfully Created"
end
