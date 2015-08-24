# test_recurly
Defect 1 :  API to create account requires billing info while  https://dev.recurly.com/docs/get-account says billing info is optional - yet creation of account using API fails without billing info

Defect 2 :  Creating billing_info object with name_on_account cannot have first_name and last_name - however fails without adding first_name and last_name
