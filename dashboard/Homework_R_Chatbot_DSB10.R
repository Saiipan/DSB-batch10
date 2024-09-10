#1. Pizza chatbot
library(dplyr)
library(readr)

#Menu
style <- c("Classic","Crispy thin","New york pizza","Extreme crust","Sausage cheese")
style_id <- c(1:5)
style_price <- c(0,10,50,80,60)
style <- data.frame(style_id,style,style_price)

pizza <- c("Hawaiian","Meat lover","Cheese deluxe","Seafood extreme","Tom yum kung","Chicken BBQ")
pizza_id <- c(1:6)
pizza_price <- c(100,150,120,180,140,130)
pizza <- data.frame(pizza_id,pizza,pizza_price)

side_dish <- c("No Need","Salad","Pasta","Fried","Snack","Drink")
side_id <- c(1:6)
side_price <- c(0,20,50,25,20,20)
side_dish <- data.frame(side_id,side_dish,side_price)

#Function

#Order
order <- function() {
  customer_name <- readline("Name: ")
  print(paste("Hello ",customer_name,", Welcome to Porjai Pizza. What would you like to order?"))

  print("Here is our menu, Select your style")
  print(style)
  order_pizza1 <- as.numeric(readline("Select your style_id: "))
  
  print("Select your pizza")
  print(pizza)
  order_pizza2 <- as.numeric(readline("Select your pizza_id: "))
  
  print("Select your side dish")
  print(side_dish)
  order_pizza3 <- as.numeric(readline("Select side_id: "))

#Confirm Order
your_stlye <- style[style$style_id == order_pizza1,"style"]
your_pizza <- pizza[pizza$pizza_id == order_pizza2,"pizza"]
your_side_dish <- side_dish[side_dish$side_id == order_pizza3,"side_dish"]
print(paste("Your order is: ",your_stlye," with ",your_pizza," and side dish ",your_side_dish))

#Total order
price_style <- style[style$style_id == order_pizza1,"style_price"]
price_pizza <- pizza[pizza$pizza_id == order_pizza2,"pizza_price"]
price_side <- side_dish[side_dish$side_id == order_pizza3,"side_price"]
Total_price <- price_style + price_pizza + price_side
print(paste("Thank you for your order Khun ",customer_name," ,Total price for your order is: ",Total_price," Bahts"))
}



