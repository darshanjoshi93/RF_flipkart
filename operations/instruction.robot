***Settings***
Library  SeleniumLibrary
Library  Collections

****Keywords***
open Flipkart Website
    
    Open Browser  ${url}  ${browser}
    Maximize Browser Window
   # Delete All Cookies
    Sleep  5s
    Log to Console  Step1

Login into Flipkart
    Clear Element Text  xpath=//input[@type='text' and @class='_2IX_2- VJZDxU']
    Input Text  xpath=//input[@type='text' and @class='_2IX_2- VJZDxU']  9738471440
    Sleep   3s
    Clear Element Text  xpath=//input[@type='password']
    Input Password  xpath=//input[@type='password']  darshan@123
    Sleep   3s
    Click Element   xpath=//button[@type='submit' and @class='_2KpZ6l _2HKlqd _3AWRsL']
    Log to Console  Step2
    Sleep   3s
    #Verify WebPage title    ${Exp_homePage}

Go to Electronics catagory
    Mouse Over  ${exp_catagory}
    Sleep   5s
    #Click Element  ${exp_catagory} 
    #Sleep   2s
    Click Element   ${exp_sub_catagory}
    Sleep   5s
    #Verify WebPage title  ${Exp_title}
    Sleep   7s
    Click Element   ${product}

Select Product_details page
    ${window}   Get Window Handles
    Sleep   3s
    Switch Window   ${window}[1]
   # ${lists}    Get Window Handles
    #FOR  ${win} IN  ${lists}
    #Select Window  ${win}
    #${url}  Get Locations
    #log to Console  ${url} 
    #Select Window   ${exp_product_details_page}
    Sleep   5s
    Page Should Contain  ${exp_product_details_page}
    
Add product to the cart
    Sleep   5s
    Click Element   ${cart_button}

Verify product in the cart page
    Sleep  5s
    #Page Should Contain  ${exp_product_cart_page}
    Click Element   ${flikart_home}
    Sleep  5s
    Click Element   ${cart}
    Sleep  2s
    Page Should Contain  ${Expected_Product}






    



