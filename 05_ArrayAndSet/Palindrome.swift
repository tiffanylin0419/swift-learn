var text = ["a", "n", "n", "a"]
// ["l", "e", "v", "e", "l"]
// "h", "e", "l", "l", "o"]
var reversed = [String]()
var counter=text.count
while counter>0{
  counter-=1
  reversed.append(text[counter])
}
print(reversed)

if text==reversed{
  print("We have a palindrome!")
}else{
  print("We do not have a palindrome!")
}
