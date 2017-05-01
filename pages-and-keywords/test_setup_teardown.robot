**Settings***
Resource   ../credentials/environmentVariables.robot

*** keywords ***

Setup
	Set Environment Variable        ${driver_name}                                        ${chromedriver_location}
	Open Browser 				    ${base_url}                                           browser=${chrome_browser}
	wait Until Page Contains        ${login_pg_label_login}
	Maximize Browser Window
	Set Selenium Speed              .2
	Set Selenium Timeout            20
	Delete all cookies
	
	Location Should be              ${base_url}
	

Teardown
    Close all browsers