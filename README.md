# test_recurly
API Defect 1 : MAJOR : First time creating account requires billing info while  https://dev.recurly.com/docs/get-account says billing info is optional - yet creation of account using API fails without billing info

Troubleshoot :  Is fine subsequent accounts without billing info

API Defect 2 : MAJOR : Creating billing_info object with name_on_account cannot have first_name and last_name - however fails without adding first_name and last_namei

UI NEW BETA Defect 1 : MINOR :  Responsive Mobile View of Browser misaligned for Mac Firefox 40.2

UI NEW BETA Defect 2 : MAJOR :  Account Code can be entered as nil by adding it as ''

UI NEW BETA Defect 3 : MAJOR :  Name can be entered as nil by adding it as ''

UI NEW BETA Defect 4 : MAJOR :  Company name can be entered as nil by adding it as ''

