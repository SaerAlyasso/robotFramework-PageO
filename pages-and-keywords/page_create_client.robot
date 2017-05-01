***settings***
Resource    page_dashboard.robot

***variables***

${sidemenu_client}                      xpath=//*[@id='side-menu']/li[5]/a
${client_pg_label_list}                 List
${client_pg_button_create_new_client}   xpath=//*[@id='j_idt49']/a[1]
${client_pg_textfield_name}             xpath=//*[@id='name']
${client_pg_textfield_email}            xpath=//*[@id='email']
${client_pg_radiobutton}                xpath=//*[@id='gender:0']
${client_pg_social_security_number}     xpath=//*[@id='socialSecurityNumber']
${client_pg_button_save}                xpath=//*[@id='j_idt51']/a[1]
${client_pg_label_create_new_client}    Create New Client
${client_pg_label_creation}             Client was successfully created
${client_pg_button_clients}             xpath=//*[@id='j_idt50']/a[4]

***keywords***
create new client
    
   wait until page contains   ${dashboard_pg_label_dashborad}
   click element              ${sidemenu_client}
   wait until page contains   ${client_pg_label_list}
   click element              ${client_pg_button_create_new_client}
   wait until page contains   ${client_pg_label_create_new_client}
   input text                 ${client_pg_textfield_name}                  testClient
   input text                 ${client_pg_textfield_email}                 testClient@email.com
   click element              ${client_pg_radiobutton}  
   input text                 ${client_pg_social_security_number}      123456
   click element              ${client_pg_button_save}
   wait until page contains   ${client_pg_label_creation}
   click element              ${client_pg_button_clients}
   wait until page contains   testClient
   