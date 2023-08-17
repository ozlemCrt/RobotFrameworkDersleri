*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
Amazon sayfasına git
  Open Browser    https://amazon.com/    chrome
  Sleep    2s
  ##Anasayfaya ulaşıldığını doğrula#
  Title Should Be    Amazon.com. Spend less. Smile more.
  Sleep    2s
