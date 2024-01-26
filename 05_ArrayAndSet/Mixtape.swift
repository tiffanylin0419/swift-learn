// Write your code below 📼

print(".------------------------.")
print("| pop mixtape     90 min |")
print("|     __  ______  __     |")
print("|    (  )|).....|(  )    |")
print("|    (__)|)_____|(__)    |")
print("|    ________________    |")
print("|___/_._o________o_._\\___|")

var mixtape=[String]()
mixtape.append("Song1")
mixtape.append("Song2")
mixtape.append("Song3")
mixtape.append("Song4")
mixtape.append("Song5")
mixtape.append("Song6")
mixtape.append("Song7")
mixtape.append("Song8")
mixtape.append("Song9")

print("There are \(mixtape.count) songs in the mixtape")

mixtape.remove(at: 3)
mixtape.remove(at: 5)

mixtape.insert("Song4", at:3)
mixtape.insert("Song7", at:6)
for song in mixtape{
  print(song)
}
