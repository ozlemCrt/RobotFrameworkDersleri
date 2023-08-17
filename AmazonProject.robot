*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${BROWSER}   chrome
${URL}    https://www.amazon.com/
${A_URUN}    Nokia 3310
${URL_Registry}   https://www.amazon.com/registries?ref_=nav_cs_registry&ref_=nav_cs_registry


*** Test Cases ***
Nokia 3310 Arama Testi
#tarayıcı aç#
   Open Browser    ${URL}    ${BROWSER}
   #Tarayıcı penceresini tam ekran yap
   Maximize Browser Window
   #Arama metni kutusuna ${A_URUN} değerini girer
   Input Text    id=twotabsearchtextbox    ${A_URUN}
   #Arama düğmesine tıkla
   Click Element    xpath=//input[@value='Go']
   Sleep    2s
#${product_text} değerinin doğrulamasını yap
   ${Urunun_Texti}    Get Text    css=.a-color-state.a-text-bold
   Should Be Equal As Strings     ${Urunun_Texti}    "Nokia 3310"
   #istenilen url e git
   Go To    ${URL_Registry}
   #Gift cards sekmesine git
   Click Element    link=Gift Cards
   






