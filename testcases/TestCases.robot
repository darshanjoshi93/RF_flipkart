***Settings***
Resource    ../operations/instruction.robot
Resource    ../operations/variables.robot


***Test Cases***
User should see flipkart login page
    open Flipkart Website
User should login successfully    
    Login into Flipkart
User should navigate to the Electronics catagory
    Go to Electronics catagory
user verified
    Select Product_details page
Product added to the cart
    Add product to the cart
Expected product should be display in cart page
    Verify product in the cart page

    