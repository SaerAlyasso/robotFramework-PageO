***Settings***
Resource        page_create_bedroom
***variables***
${sidemenu_dashboard}            xpath=//*[@id='side-menu']/li[2]/a
${delete_pg_button_delete}       xpath=//*[@id='j_idt49']/table/tbody/tr[7]/td[8]/a[3]
***keywords***
delete bedroom
    click element                ${sidemenu_dashboard}
    click element                ${sidemenu_bedroom} 
    wait until page contains     Sea view
    click element                ${delete_pg_button_delete}
    wait until page contains     Bedroom was successfully deleted.
    