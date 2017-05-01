***Settings***

Resource   page_create_client.robot

***variables***
${remove_pg_delete_button}        xpath=//*[@id='j_idt49']/table/tbody/tr[6]/td[7]/a[3]
***keywords***
remove client
    click element                ${sidemenu_client}
    wait until page contains     ${client_pg_label_list}
    wait until page contains     testClient
    click element                ${remove_pg_delete_button}
    wait until page contains     Client was successfully deleted.
