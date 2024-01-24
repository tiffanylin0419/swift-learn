// Create your Whale Talk program below:
var input = "Hi, how are you today?"
var output = ""
for char in input{
  let lowerChar=char.lowercased()
  switch lowerChar{
    case "a", "i", "o":
      output+=lowerChar.uppercased()
    case "e", "u":
      output+=lowerChar.uppercased()
      output+=lowerChar.uppercased()
    default:
      continue
  }
}



print(output)