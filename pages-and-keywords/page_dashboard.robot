***variables***
${dashboard_pg_label_dashborad}     Dashboard

${logout_menu}      xpath=//i[@class='fa fa-caret-down']
${logout_submenu}   xpath=//*[@id="wrapper"]/nav/ul/li[2]/ul/li/a

***keywords***
perform logout
    
    wait until page contains element    ${logout_menu}
    click element                       ${logout_menu}
    wait until page contains element    ${logout_submenu}
    click element                       ${logout_submenu}
    