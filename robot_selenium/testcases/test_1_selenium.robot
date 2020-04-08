***Settings***
Library        Selenium2Library 
#Suite Setup    Open                 Browser    ${url}

***Variables***
${Browser}    firefox
${url}        http://cashygo.in/

***Test Cases***
TestCashygo
    open browser                    ${url}                                                                                  ${Browser}
    Title should be                 Sell Used Mobile,Laptop,Tablets and Iwatches Online for instant cash 
    click element                   xpath://html/body/section[1]/div/div[2]/div[1]/a
    click element                   xpath://html/body/div[2]/div/div/div/div[1]
    click element                   xpath://html/body/div[2]/div/div/div/div[1]
    click element                   xpath://html/body/div[2]/div/div/div/div[1]
    click element                   xpath://html/body/div[2]/div/div/div/div[1]
    click element                   xpath://html/body/section[1]/div/div/div/div[1]/div[3]/div/div
    Wait Until Page Contains        Enter your Mobile Number
    input text                      id:number                                                                               8861556442
    click button                    xpath://*[@id="btn1"]
    wait Until Page Contains        ANSWER FEW QUESTIONS
    click Element                   xpath://*[@id="box"]
    click Element                   xpath://html/body/section[1]/div/div/div/div/div[2]/div/div/form/div/div[3]/ul/li[2]
    Current Frame Should Contain    How old is your device ?
    #click Element                  xpath://html/body/section[1]/div/div/div/div/div[2]/div/div/form/div/div[2]/section[2]/div[2]/div[2]/input
    click Element                   xpath://html/body/section[1]/div/div/div/div/div[2]/div/div/form/div/div[3]/ul/li[2]
    click Element                   xpath://*[@id="wifi"]
    click Element                   xpath://html/body/section[1]/div/div/div/div/div[2]/div/div/form/div/div[3]/ul/li[2]
    #click Element                  xpath://html/body/section[1]/div/div/div/div/div[2]/div/div/form/div/div[2]/section[4]/div[2]/div[2]/input
    click Element                   xpath://html/body/section[1]/div/div/div/div/div[2]/div/div/form/div/div[3]/ul/li[3]
    input text                      name:Name                                                                               Parmeshwar
    close browser
****Keywords***