***Settings***
Library        RequestsLibrary
Library        Collections
Suite Setup    Create Session     mysession    ${URL}


***Variables***
${URL}         http://restapi.demoqa.com
@{CityList}    Delhi Bangaluru



***Test Cases***
GETWEATHERFORCAST
    [Tags]            smoke
    FOR               ${ct}    IN    @{CityList}
    log to console    ${ct}
    MAKEGETREQUEST    ${ct}
    END
    [Teardown]        None


***Keywords***
MAKEGETREQUEST
    [Arguments]      ${city}
    ${Response}=     Get Request    mysession    /utilities/weather/city/${city} 
    CHECKRESPONSE    ${Response}    ${city}

CHECKRESPONSE
    [Arguments]        ${Response}         ${city}
    log to console     ${city}
    ${status_code}=    Convert To String    ${Response.status_code}
    Should Be Equal    ${status_code}      200

    ${body}=          Convert To String    ${Response.content}
    Should Contain    ${body}              ${city}

    log to console    ${Response.content}

    log to console    ${Response.headers}

