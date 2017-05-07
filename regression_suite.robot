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
    perform logout
    
Test Case 2
    Test login into the system
    create new client
    perform logout
Test Case 3
    Test login into the system
    remove client
    perform logout
Test Case 4
    Test login into the system
    create bedroom
    perform logout
Test Case 5
    Test login into the system
    delete bedroom
    perform logout