import Foundation

print("Hello World")


var str = "Hello, playground"

var snackItems = [String]()
var items = ["Tornado potato", "shaved Ice","Donuts","Ice cream","French Fries"]
var snacks :[String]
snacks = ["Tornado potato", "shaved Ice","Donuts","Ice cream","French Fries"]

print("Snacks:\(snacks)")

for snack in snacks{
    print("each day :\(snack)")
}
for snack in 0..<snacks.count{
     print("each day :\(snacks[snack])")
}

for snack in snacks [2...]{
    print("new day one sided range: \(snack)")
}

for snack in snacks [...2]{
    print("new day one sided range: \(snack)")
}

for ( index, value) in snacks.enumerated(){
    print("index : \(index)vlaue: \(value)")
}
var numbers = Array(repeating: 1, count: 5)
print("numbers: \(numbers)")

numbers[2] = 25
print("number : \(numbers)")

var morenumbers = Array(repeating: 0 , count:4)
print("morenumber: \(morenumbers)")
morenumbers[3] = 34
morenumbers[2] = 2
var allnumbers = numbers + morenumbers

allnumbers[5] = 100
print("allnumbers :\(allnumbers)")

var grocery = ["pringles", "juice"]
grocery += ["fruits","chocolates"]
grocery += ["Tomatoes"]
grocery.append("rice")
print("grocery: \(grocery)")

for item in grocery{
    print("one by one :\(item)")
}
grocery[1...3] = ["milk","veggies","potato","dkld","kdkl"]
print("grocery: \(grocery)")

grocery.insert("Ice cream", at: 1) 
print("grocery: \(grocery)")

grocery.remove(at:7)
print("grocery:\(grocery)")
grocery.removeAll()

if grocery.isEmpty{
    print("put everything in kitchen")
}else{
    print("go back to the market")
}

var rajinikanth = [Any]()
rajinikanth.append("Robot")
rajinikanth.append(2.0)
rajinikanth.append(1)
print("rajinikanth:\(rajinikanth)")

var languages = Set<String>()
languages.insert("Gujarati")
languages.insert("panjabi")
languages.insert("English")
languages.insert("Telugu")
languages.insert("Sanskrit")
print("languages: \(languages)")

languages.remove("Sanskrit")
print("Telugu is available in class: \(languages.contains("Telugu"))")
print("sanskrit is available in class: \(languages.contains("Sanskrit"))")

for lang in languages.sorted(){
    print("language: \(lang)")
}
let motherToung : Set = ["Telugu","panjabi","Urdu","Hindi","Telugu"]
print("mothertoung : \(motherToung)")

print("Union :\(languages.union(motherToung).sorted())")
print("Union :\(languages.intersection(motherToung).sorted())")

print("symmetric difference : \(languages.symmetricDifference(motherToung).sorted())")
print("symmetric difference 1-2: \(languages.subtracting(motherToung).sorted())")
print("symmetric difference 2-1: \(motherToung.subtracting(languages).sorted())")

var commonLangs = languages.intersection(motherToung).sorted()
print("commonlangs: \(commonLangs)")
print(languages.isSubset(of: commonLangs))
print(languages.isSuperset(of: commonLangs))
print(motherToung.isDisjoint(with: languages))

//dictionary

var appreciation = [String : String]()
appreciation["Day 1"] = "potato Tornoado"
appreciation["day 3"] = "Donuts"
print("appreiciation : \(appreciation)")

print(" \(appreciation.count) appreciation days")

// appreciation = [:]
if appreciation.isEmpty{
    print("NO appreciation 😃😃...just stides")
}

appreciation["Day 2"] = "shaved ice"
print("appreiciation : \(appreciation)")

let oldItem = appreciation.updateValue("Gola", forKey: "Day 2")
print("appreiciation : \(appreciation)")
print("oldItem: \(oldItem)")
if let day4Item = appreciation["Day 4"]{
print("day4item :\(day4Item)")
}else{
    print("Nothing for day 4")
}
appreciation["Day 4"] = "Ice Cream"

if let removedValue = appreciation.removeValue(forKey: "Day3:"){
    print("\(removedValue) are not longer available")
    print("appreciation : \(appreciation)")
}else {
    print("nothing found for day4")
}

appreciation["Day 2"] = nil
print("appreciation : \(appreciation)")
for app in appreciation.keys{
    print("app key : \(app)")
}
for app in appreciation.values{
    print("app values :\(app)")
}
for(key, value) in appreciation{
    print("key : \(key) value: \(value)")
}

var flight = [String : AnyObject]()
flight["number"] = "9w 234" as AnyObject
flight["Duration"] = 16 as AnyObject
flight["cost"] = 1000.39 as AnyObject
print(" flight : \(flight)")