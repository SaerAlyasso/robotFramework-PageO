***Settings***
Resource   page_create_client.robot
***variables***
${sidemenu_bedroom}                                 xpath=//*[@id='side-menu']/li[3]/a
${bedroom_pg_create_new_bedroom}                    xpath=//*[@id='j_idt49']/a[1]
${bedroom_pg_textfield_description}                 xpath=//*[@id='description']
${bedroom_pg_textfield_floor}                       xpath=//*[@id='floor']
${bedroom_pg_textfield_number}                      xpath=//*[@id='number']
${bedroom_pg_textfield_price}                       xpath=//*[@id='priceDaily']
${bedroom_pg_textfield_status_list}                 xpath=//*[@id='bedroomStatusId']
${bedroom_pg_textfield_type_list}                   xpath=//*[@id='typeBedroomId']
${bedromm_pg_button_save}                           xpath=//*[@id='j_idt50']/a[1]
${bedroom_pg_label}                                 Create New Bedroom
***keywords***
create bedroom
    wait until page contains     Bedroom
    click element                ${sidemenu_bedroom}
    wait until page contains     ${client_pg_label_list}
    click element                ${bedroom_pg_create_new_bedroom}
    wait until page contains     ${bedroom_pg_label}
    input text                   ${bedroom_pg_textfield_description}        Sea view 
    input text                   ${bedroom_pg_textfield_floor}              10 
    input text                   ${bedroom_pg_textfield_number}             205
    input text                   ${bedroom_pg_textfield_price}              90
    click element                ${bedroom_pg_textfield_status_list}
    select from list by label    ${bedroom_pg_textfield_status_list}        VACANT    
    click element                ${bedroom_pg_textfield_type_list}
    select from list by label    ${bedroom_pg_textfield_type_list}          TOP BED KING
    click element                ${bedromm_pg_button_save}
    wait until page contains     Bedroom was successfully created.
    click element                xpath=//*[@id='j_idt50']/a[4]
    wait until page contains     Sea view