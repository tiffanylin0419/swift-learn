var spanish101: Set = ["Angela", "Declan", "Aldany", "Alex", "Sonny", "Alif", "Skyla"]
var german101: Set = ["Angela", "Alex", "Declan", "Kenny", "Cynara", "Adam"]
var advancedCalculus: Set = ["Cynara", "Gabby", "Angela", "Samantha", "Ana", "Aldany", "Galina", "Jasmine"]
var artHistory: Set = ["Samantha", "Vanessa", "Aldrian", "Cynara", "Kenny", "Declan", "Skyla"]
var englishLiterature: Set = ["Gabby", "Jasmine", "Alex", "Alif", "Aldrian", "Adam", "Angela"]
var computerScience: Set = ["Galina", "Kenny", "Sonny", "Alex", "Skyla"]

// Write your code below 🍎

var allStudents = spanish101.union(german101)
allStudents = allStudents.union(advancedCalculus)
allStudents = allStudents.union(artHistory)
allStudents = allStudents.union(englishLiterature)
allStudents = allStudents.union(computerScience)

for student in allStudents{
  print(student)
}
print("There are \(allStudents.count) students")


var noLanguage = allStudents.subtracting(german101)
noLanguage = noLanguage.subtracting(spanish101)
print(noLanguage)

var spanishOrGerman = german101.symmetricDifference(spanish101)
print(spanishOrGerman)

var languageAwardWinners = german101.intersection(spanish101)
print(languageAwardWinners)

var sevenPlus = 0
var classSet: Set = [spanish101, german101, advancedCalculus, artHistory, englishLiterature, computerScience]

for clas in classSet{
  if clas.count > 7{
    sevenPlus+=1
  }
}
print("There are \(sevenPlus) classes that has over 7 students")
