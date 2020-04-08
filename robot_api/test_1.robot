***Settings***
Library    RequestsLibrary
Library    Collections

***Variables***

${URL}     http://restapi.demoqa.com
${City}    Delhi

***Test Cases***
Get_weatherInfo
    [Tags]             smoke
    Create Session     mysession            ${URL}
    ${Response}=       Get Request          mysession                  /utilities/weather/city/${City}    
    #Validations
    ${status_code}=    convert to string    ${Response.status_code}
    should be equal    ${status_code}       200

    ${body}=          convert to string    ${Response.content}
    should contain    ${body}              Delhi

    ${headers_contenttype}=    get from dictionary       ${Response.headers}    Content-Type
    should be equal            ${headers_contenttype}    application/json

    ${headers}=       convert to string    ${Response.headers}
    should contain    ${headers}           application/json


 

