// Add your code below:

var range=100

for i in 1...range{
  if i%15==0 {
    print("FizzBuzz")
  }else if i%3==0{
    print("Fizz")
  }else if i%5==0{
    print("Buzz")
  }else{
    print(i)
  }
}