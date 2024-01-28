// Write your code below 🥛

var numBottles: Int = 99
for numBottles in stride(from: 99, to: 0, by: -1){
  print("\(numBottles) bottles of milk on the wall, \(numBottles) bottles of milk!")
  print("You take one down and pass it around…")
  print("\(numBottles-1) bottles of milk on the wall!")
}
print("0 bottles of milk on the wall, ")
print("0 bottles of milk!")
print("Go to the store and buy some more,")
print("99 bottles of milk on the wall!")