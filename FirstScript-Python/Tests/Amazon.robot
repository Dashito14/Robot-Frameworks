*** Settings ***
Documentation  This is some basic info about the whole suite
Resource    ../resources/Amazon.robot
Resource    ../resources/Common.robot
Variables    ../Resources/Variables/Variables.py
Test Setup    Amazon.Abrir Amazon
Test Teardown    Common.Cierra el buscador

# Copy/paste the line below into Terminal to execute:
# robot -d results tests/amazon.robot

*** Variables ***
${WEB} =    ${webamazon}
${NAV} =    ${navegador}
${OBJ} =    ${objeto}

*** Test Cases ***
Busca agrega al carrito y sale
    [Documentation]  This is some basic info about the test
    [Tags]  Smoke
    Amazon.Busca algo en la tienda  ${OBJ}
    Amazon.Observa los resultados
    Amazon.Selecciona un objeto de la tienda
    Amazon.Agrega y cierra el carrito

Busca productos
    Amazon.Busca algo en la tienda    ${OBJ}
    Amazon.Observa los resultados

*** Keywords ***
