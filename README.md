# test_recurly

INFO :
To run this script - clone the repo and cd into test_recurly
type 'cucumber' to start script

This script does the following :

Creates Customer Account using Recurly API
Verifies the account is added while verifying via UI log-in the proper amount of accounts are displayed


DEFECTS : versions :  Ruby 2.0.0 used, Recurly 2.4.5

API Defect 1 : MAJOR : First time creating account requires billing info while  https://dev.recurly.com/docs/get-account says billing info is optional - yet creation of account using API fails without billing info

Troubleshoot :  Is fine in subsequent account creations without billing info - but fails initial account creation without billing info

API Defect 2 : MAJOR : Creating billing_info object with name_on_account cannot have first_name and last_name AND name_on_account  - however account creation fails without adding first_name and last_namei

UI NEW BETA Defect 1 : MINOR :  Responsive Mobile View of Browser misaligned for Mac Firefox 40.2

UI NEW BETA Defect 2 : MAJOR :  Account Code can be entered as nil by adding it as ''

UI NEW BETA Defect 3 : MAJOR :  Name can be entered as nil by adding it as ''

UI NEW BETA Defect 4 : MAJOR :  Company name can be entered as nil by adding it as ''

UI NEW BETA Defect 5 : Minor :  Acconts Export Site Data page Time Range Field truncates 'Month to date' verbiage

UI NEW BETA Defect 6 : Major :  IE9 accounts page and accounts table fully misaligned



