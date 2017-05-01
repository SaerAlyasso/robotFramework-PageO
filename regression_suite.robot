***Settings***
Library         OperatingSystem
Library         Selenium2Library
Library         String

Resource        ./pages-and-keywords/test_setup_teardown.robot
Resource        ./pages-and-keywords/page_login.robot
Resource        ./pages-and-keywords/page_dashboard.robot
Resource        ./pages-and-keywords/page_create_client.robot
Resource        ./pages-and-keywords/page_remove_client.robot
Resource        ./pages-and-keywords/page_create_bedroom.robot
Resource        ./pages-and-keywords/page_delete_bedroom.robot

Test setup      Setup
Test teardown   Teardown

***Test Cases***
Test Case 1
    
    Test login into the system
    create new client
    remove client
    create bedroom
    delete bedroom
   # perform logout