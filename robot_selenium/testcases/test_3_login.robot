***Settings***
Library    SeleniumLibrary

***Variables***
${Browser}    firefox
${URL}        https://orangehrm-demo-6x.orangehrmlive.com/

${Crendential}    Admin
@{PassList}       Admin             admin123
&{LoginData}      username=Admin    password=admin123

***Test Cases***
Test Orange live
    open Browser                 ${URL}    ${Browser}
    set Browser implicit wait    5

    log        @{PassList}[0]
    log        &{LoginData}[password]
    LoginKW

    click link         id=user-dropdown
    click link         id=logoutLink
    title should be    OrangeHRM
    close Browser

***Keywords***
LoginKW
    input text      id=txtUsername    @{PassList}[0]
    input text      id=txtPassword    &{LoginData}[password]
    click button    id=btnLogin
