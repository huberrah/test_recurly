require 'rubygems'
require 'recurly'

class Recurly_Account

Recurly.subdomain      = 'test-rhuber'
Recurly.api_key        = '516102c4c9e2488094b4f14033791fd1'

# Set default currency to USD
Recurly.default_currency = 'USD'

#set Counter to 0
$iNumberAccounts = 0
$iNewNumberAccounts = nil

#Find the # accounts present
Recurly::Account.find_each do |account|
  $iNumberAccounts += 1
end

iAccountCode = $iNumberAccounts + 1

#Create a unique e-mail to mock uniqueness using Counter
account = Recurly::Account.find('1')
account_code = account.account_code
email  = account_code + 'test@testmail.com'

#Create the recurly account without BillingInfo
puts "Creating Account using Recurly API"
account = Recurly::Account.create(
  :account_code => "#{iAccountCode}",
  :email        => email,
  :first_name   => 'TestName',
  :last_name    => 'TestLastName'
)

$iNewNumberAccounts = $iNumberAccounts + 1

puts " Number #{$iNewNumberAccounts} account  successfully created"
end
