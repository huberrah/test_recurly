require 'rubygems'
require 'recurly'

Recurly.subdomain      = 'test-rhuber'
Recurly.api_key        = '516102c4c9e2488094b4f14033791fd1'

# To set a default currency for your API requests:
Recurly.default_currency = 'USD'

#set Counter to 0
iNumberAccounts = 0
iNewNumberAccounts = nil

#Find the # accounts present
Recurly::Account.find_each do |account|
  iNumberAccounts += 1
end

iAccountCode = iNumberAccounts + 1

account = Recurly::Account.find('1')
account_code = account.account_code
email  = account_code + 'test@testmail.com'
puts email




account.billing_info = {
  :first_name =>  'TestFirst',
  :last_name => 'TestLast',
  :number             => '4111-1111-1111-1111',
  :verification_value => '123',
  :month              => 11,
  :year               => 2015,
  :routing_number => '065400137',
  :account_number => '4444000000005555',
  :address1 => '123 Main St.',
  :city => 'San Francisco',
  :state => 'CA',
  :country => 'US',
  :zip => '94105'
}
account.billing_info.save
puts (account.billing_info)
puts "Billing Successfully Saved"

puts "Creating Account Object"
account = Recurly::Account.create(
  :account_code => "#{iAccountCode}",
  :email        => email,
  :first_name   => 'TestName',
  :last_name    => 'TestLastName'
)

iNewNumberAccounts = iNumberAccounts + 1
puts " #{iNewNumberAccounts} Account(s) successfully created"
