***Settings***
Library             SeleniumLibrary

***Variables***
${Browser}              firefox
${URL}                  https://www.google.com

****Test Cases***
MyFirstTest
   Log            Hello world
   

MyAutomation
   open Browser                ${URL}      ${Browser}
   set Browser implicit wait   5
   input text                  name=q      xvideos
   press keys                  name=q      ENTER  
   # sleep                       2
   # click button                name=btnK
   sleep                       2
   close Browser
   log                         Test completed
