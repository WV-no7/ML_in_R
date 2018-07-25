# create a 2 by 5 matrix
x <- 1:10
print("x <- 1:10")
print(x)

print("changing dimension to 5*2 using attr() func")
attr(x,"dim") <- c(5,2)
print(x)

#creating custom attribute and assigning values
print("assigning 'my attribute' to x")
attr(x, "my_attribute") <- "This is a custom attribute of x"
print(attr(x, "my_attribute"))


#using attr()
v = c("sad", "happy")
print("adding names to column using attr() func")
attr(v,"names")<- c("First", "Last")
print(v)


#directly changing attributes
u = c("hello", "world")
print("adding names to column using names() func")
names(u) = c("First", "Last")
print(u)

#naming inside vector
b <- c(x = 1, y = 2, z = "4")
print("b <- c(x = 1, y = 2, z = 4)")
print(b)