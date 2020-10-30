*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
Entrar en mi equipo y esperar confirmacion
    click link  xpath=//*[@id="bs-example-navbar-collapse-1"]/ul/li[5]/a
    wait until page contains    Our Amazing Team