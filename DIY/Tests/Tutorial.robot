*** Settings ***
Resource  ../Resources/Common.robot
Resource  ../Resources/TutorialApp.robot
Test Setup  Begin Web Test
Test Teardown  End Web Test

# Para ejecutar poner en la terminal "robot -d results Tests/Tutorial.robot

*** Variables ***
${NAV} =  chrome
${WEB} =  http://www.robotframeworktutorial.com/front-office/

*** Test Cases ***
Entrar en mi equipo
  [Documentation]  deberia entrar en la pestaña mi equipo
  [Tags]  Test1
    Pulsar en mi equipo
    Sleep  3s
