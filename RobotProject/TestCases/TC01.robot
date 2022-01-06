***Settings ***
Library    SeleniumLibrary
Library    ../ExternalKeywords/userkeyword.py

***Variables ***
${Browser}    Chrome
${URL}    https://www.thetestingworld.com/testings
***Test Cases ***
TC002 Bowoser open and close
    Create Folder
    Open Browser    ${URL}    ${Browser}
    Maximize Browser Window
    Enter Username and Password    damodar    da@hcl.com
    Set Selenium Speed    2seconds
    Select From List By Index    name:sex    1
    Select From List By Value    name:sex    2
    Close Browser
***Keywords ***
Enter Username and Password
    [Arguments]    ${username}    ${email}    ${name}=damodar
    Input Text    name:fld_username    ${username}
    Input Text    xpath://*[@*='fld_email']   ${email}
    log    ${name}
     FOR   ${i}   IN  10
     log to console    Welcome
     END

   ***Keywords ***
   Create Folder
      createfolder