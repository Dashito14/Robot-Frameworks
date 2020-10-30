*** Settings ***
Library  SeleniumLibrary
Library    ../Resources/PO/pageObject.py
Variables    Variables/Variables.py

*** Keywords ***
Abrir Amazon
    Open Browser   ${WEB}   ${NAV}
    Wait Until Page Contains  Ofertas del Día

Busca algo en la tienda
    [Arguments]      ${OBJ}
    pageObject.Texto en el buscador y busca    ${OBJ}

Observa los resultados
    Wait Until Page Contains  resultados para "${OBJ}"
    Sleep    3s

Selecciona un objeto de la tienda
    Click Link  xpath=//*[@id="search"]/div[1]/div[2]/div/span[3]/div[2]/div[3]/div/span/div/div/div[2]/h2/a
    Wait Until Page Contains  Volver a resultados

Agrega y cierra el carrito
    Click Button  id=add-to-cart-button
    Wait Until Page Contains  Agregado al carrito
    Click Link  id=hlb-view-cart-announce
    Sleep    3s
    pageObject.Pulsa al boton Amazon