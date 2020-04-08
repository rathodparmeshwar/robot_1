***Settings***
Library    SeleniumLibrary

***Variables***
${Browser}    firefox
${Url1}       http://www.fb.com
${Url2}       https://www.facebook.com/


***Test Cases***
QATestHub1
    Open Browser                   ${Url1}                                                                                 ${Browser}
   # Set Window Size                1920                                                                                    1080
    Location Should Be             ${Url2}                                                                                 
    Page Should Contain ELement    Xpath://html/body/div[1]/div[3]/div[1]/div/div/div/div/div[2]/div/div[1]/div[1]/span    Create an account    

    close Browser