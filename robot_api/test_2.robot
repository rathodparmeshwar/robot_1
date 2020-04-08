***Settings***
Library    RequestsLibrary
Library    Collections
Suite Setup    Create Session    mysession    ${URL}

***Variables***
${URL}         http://restapi.demoqa.com
${City}        Delhi
@{CityList}    Delhi    Bengaluru    Chennai        #Created List

***Test Cases***
GetWeatherInfo      #Test Case for weather
    [Tags]    smoke

    #For loop for city in cities
    FOR            ${ct}    IN    @{CityList}    #Looped into List
    MakeApiPost    ${ct}
    END
    [Teardown]      None        #Created Session in Suit Setup for global scope

    # :FOR    ${ct}   IN    @{CityList}
    # \       Run Keyword If    '${ct}' == 'asd'      Exit For Loop
    # \       log to console               ${ct}
    # log     loop ended

   # ChekApiResponse     ${Response}

***Keywords***

MakeApiPost        #Seperate Keyword   for Api Post
    [Arguments]        ${City}
    ${Response}=       Get Request    mysession    /utilities/weather/city/${City}    
    ChekApiResponse    ${Response}    ${City}


ChekApiResponse     #Validation response
    [Arguments]        ${Response}          ${City}
    ${status_code}=    convert to string    ${Response.status_code}
    should be equal    ${status_code}       200

    ${body}=          convert to string    ${Response.content}
    should contain    ${body}              ${City}

    log to console    ${Response.content}

    ${headers_contenttype}=    get from dictionary       ${Response.headers}    Content-Type
    should be equal            ${headers_contenttype}    application/json

    ${headers}=       convert to string    ${Response.headers}
    should contain    ${headers}           application/json





