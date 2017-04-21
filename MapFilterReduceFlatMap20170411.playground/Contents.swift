import Foundation

var students: [String: Set<String>] = [
    "Susan" : [
        "Porcupine",
        "Armadillo",
        "Opossum",
        "Goat",
    ],
    "Suzanne" : [
        "Zebra",
        "Porcupine",
    ],
    "Susie" : [],
    "Siouxsie" : [
        "Zebra",
        "Porcupine",
        "Elephant",
        "Rabbit",
        "Falcon",
    ],
    "John" : [
        "Goat",
        "Elephant",
        "Rabbit",
        "Squid",
    ],
    "Jon" : [
        "Horse",
        "Hippopotamus",
        "Butterfly"
    ],
    "Jonah" : ["Whale",
               "Lion",
               "Zebra",
               "Dog",
               "Zebra",
               "Porcupine",
               "Armadillo",
               "Opossum",
               "Goat",
               "Elephant",
               "Rabbit",
               "Squid",
               "Falcon",
               "Octopus",],
    "Jonathan" : [
        "Snail",
        "Cobra"
    ],
    "Jonas" : [
        "Cheetah",
        "Tiger"
    ],
]



func findStudent(_ input: [String: Set<String>], some value: String) -> Set<String>? {
    return Set()
}

print("\n")

let studentsName = Array(students.keys)
let studentsFavoriteAnimals = Array(students.values)


func averageCount(input: [String: Set<String>]) -> Int {
    let count: [Int] = input.values.map{($0.count)}
    let average = floor(Double((count.reduce(0, +) / (count.count))))
    return Int(average)
}


print("\n")
print(averageCount(input: students))



func allAnimals1(input: [String: Set<String>]) -> [String] {
    let sortedByNames = input.sorted{$0.key < $1.key}.flatMap {
        return $0.value
    }
    return sortedByNames
}

print("\n")
print(allAnimals1(input: students))


/*func names(_ input: [String: Set<String>]) -> [String] {
 let unsortedListOfNames = input.map({ (key, _) -> String in
 return key
 })
 return unsortedListOfNames.sorted()
 }
 
 print(names(students))
 
 
 func animalCount(_ input: [String: Set<String>]) -> [(name: String, count: Int)] {
 let unsortedListOfNames: [(String, Int)] = input.map({ (key, value) in
 return (key, value.count)
 })
 return unsortedListOfNames.sorted(by: { (lhs, rhs) in lhs < rhs })
 }
 
 
 print("\n")
 print(animalCount(students))
 
 */

 func spoilSport(names: [String: Set<String>]) -> Set<String> {
 let aHole = names.filter{ $0.value.count == 0 }.map{$0.key}
 return Set<String>(aHole)
 }
 
 print("\n")
 print(spoilSport(names: students))

/*func spoilSport2(_ input: [String: Set<String>]) -> Set<String> {
    let aHole: Set<String> = input.filter{ $0.value.count == 0 }.map{$0.key}
    return aHole
}
*/
