# Program make a simple calculator that can add, subtract, multiply and divide using functions
add <- function(x, y) {
  return(x + y)
}
subtract <- function(x, y) {
  return(x - y)
}
multiply <- function(x, y) {
  return(x * y)
}
divide <- function(x, y) {
  return(x / y)
}
modulus <- function(x, y) {
  return(x %% y)
}
exponent <- function(x,y) {
  return(x ^ y)
}

flag <- 1
while(flag){
# take input from the user
print("Select operation.")
print("1.Add")
print("2.Subtract")
print("3.Multiply")
print("4.Divide")
print("5.Modulus")
print("6.Exponentiation")

num1<-0
num2<-0
choice = as.integer(readline(prompt="Enter choice[1/2/3/4/5/6]: "))

num1 = as.integer(readline(prompt="Enter first number: "))

num2 = as.integer(readline(prompt="Enter second number: "))

operator <- switch(choice,"+","-","*","/","%%","^")

result <- switch(choice, add(num1, num2), subtract(num1, num2), multiply(num1, num2), divide(num1, num2), modulus(num1, num2), exponent(num1, num2))

print(paste(num1, operator, num2, "=", result))

flag = as.integer(readline(prompt="Enter 0 to exit or 1 to continue : "))

}