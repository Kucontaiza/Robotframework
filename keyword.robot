***Settings***
Library    SeleniumLibrary

*** Keywords ***
Wait until element is ready then click element
    [Arguments]    ${locator}
    Wait Until Keyword Succeeds    2x    6s    Click Element    ${locator}

Wait until element is ready then input text
    [Arguments]    ${locator}    ${text}
    Wait Until Keyword Succeeds    1x    5s    Input Text    ${locator}     ${text}

Wait until Page Contains then verify text
    [Arguments]    ${expected_message}
    Wait until Keyword Succeeds    1x    10s    Wait Until Page Contains      ${expected_message} 

Wait until Page Contains then verify webpage
    ${current_url}=    Get Location
    Should Be Equal As Strings    ${current_url}    ${expected_url}

Wait until Page Contains then verify title
    Title Should Be    ${expected_Title}