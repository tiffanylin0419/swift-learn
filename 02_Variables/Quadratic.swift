var a:Double = 3
var b:Double = -11
var c:Double = -4
var root1:Double=b*b-4*a*c
root1=root1.squareRoot()
var root2:Double = (-b-root1)/(2*a)
root1 = (-b+root1)/(2*a)
print(root1)
print(root2)