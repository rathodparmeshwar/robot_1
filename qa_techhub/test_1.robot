***Settings***
Library    SeleniumLibrary

***Variables***
${Browser}    firefox
${Url1}       http://qatechhub.com
${Url2}       https://www.facebook.com


***Test Cases***
QATestHub1
    Open Browser       ${Url1}                                                      ${Browser}
    Set Window Size    1920                                                         1080          
    Title Should Be    QA Automation Tools Trainings and Tutorials | QA Tech Hub
    Go To              ${Url2}
    Go Back            
    log to console     ${Url1}
    Go To              ${Url2}
    Reload Page
    Close Browser
    log to console     Test Passed!