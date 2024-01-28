// Encode
var englishText = "this is a secret message"
let letterToMorse: [Character: String] = [
    "a": ".-",     "b": "-...",   "c": "-.-.",
    "d": "-..",    "e": ".",      "f": "..-.",
    "g": "--.",    "h": "....",   "i": "..",
    "j": ".---",   "k": "-.-",    "l": ".-..",
    "m": "--",     "n": "-.",     "o": "---",
    "p": ".--.",   "q": "--.-",   "r": ".-.",
    "s": "...",    "t": "-",      "u": "..-",
    "v": "...-",   "w": ".--",    "x": "-..-",
    "y": "-.--",   "z": "--..",
    
    "0": "-----",  "1": ".----",  "2": "..---",
    "3": "...--",  "4": "....-",  "5": ".....",
    "6": "-....",  "7": "--...",  "8": "---..",
    "9": "----.", " ": " "
]

var morseText=""
for element in englishText{
  if let morse=letterToMorse[element]{
    morseText+=morse
    morseText+=" "
  }
}
print(morseText)

// Decode
var secretMessage = ".... --- .-- -.. -.--   .--. .- .-. - -. . .-."

var decodedMessage = ""
var morseCodeArray = [String]()
var currMorse = ""
secretMessage+=" "
for char in secretMessage{
  if char==" "{
    switch currMorse{
      case "":
        currMorse+=" "
      case " ":
        morseCodeArray.append(" ")
        currMorse=""
      default:
        morseCodeArray.append(currMorse)
        currMorse=""
    }
    
  }else{
    currMorse+="\(char)"
  }
}

var morseToLetter: [String: Character] = [:]
for (key, val) in letterToMorse{
  morseToLetter[val] = key
}
for morseValue in morseCodeArray{
  if let letterChar = morseToLetter[morseValue]{
    decodedMessage+="\(letterChar)"
  }
}
print(decodedMessage)