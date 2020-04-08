***Settings***
Library    Selenium2Library
Library    resource/selenium_custom.py
***Variables***
${Url}      https://www.techlistic.com/
${title}    Techlistic

***Test Cases***
Assignment_1
    open Browser          ${Url}
    Set Window Size       1900                 1080         
    Title Should Be       ${title}
    # ${returned_url}=      Get Location
    # log to console        ${returned_url}
    Location Should Be    ${Url}
    ${source}=            Get Source
    ${da}=                parse html source    ${source}
    log to console        ${da}
    Should Be Equal       ${title}             ${da}
    Close Browser
