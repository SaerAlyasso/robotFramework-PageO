***Settings***
Resource    ../credentials/loginVariables.robot
Resource    page_dashboard.robot

***variables***
    #Login form
${login_pg_user_textfield}                id=formLogin:login
${login_pg_password_textfield}            id=formLogin:senha
${login_pg_button}                        name=formLogin:j_idt27
${login_pg_label_login}                   Login
${login_pg_title}                         Hotel Accomodation - login page



***keywords***
Test login into the system
    Input Text                    ${login_pg_user_textfield}                 ${username}
    Input Text                    ${login_pg_password_textfield}             ${password}    
    Click Element                 ${login_pg_button}
    wait until page contains      ${dashboard_pg_label_dashborad}
   # wait Until Page Contains      Dashboard
   # Sleep  3
   # Click Element                 xpath=//i[@class='fa fa-caret-down']
   # Sleep  3
   # Click Element                 xpath=//*[@id="wrapper"]/nav/ul/li[2]/ul/li/a
  #  Sleep  3
  # Wait Until Page Contains      ${login_pg_label_login}