from robot.api.deco import keyword
from robot.libraries.BuiltIn import BuiltIn

# *** Variables *** #
osm = BuiltIn().get_library_instance('SeleniumLibrary')

boton_amazon = 'xpath=//*[@id="nav-logo"]/a'
ofertas = 'Ofertas del Día'
cuadro_busqueda = 'id=twotabsearchtextbox'
boton_lupa = 'css=#nav-search-submit-text > input'


class pageObject:

    @keyword(name='Pulsa al boton Amazon')
    def pulsa_al_boton_amazon(self):
        osm.click_link(boton_amazon)
        osm.wait_until_page_contains(ofertas)

    @keyword(name='Texto en el buscador y busca')
    def texto_en_el_buscador_y_busca(self, objeto):
        osm.input_text(cuadro_busqueda, objeto)
        osm.click_button(boton_lupa)
