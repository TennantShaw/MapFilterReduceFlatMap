//
//  MapFilterReduce.swift
//  MapFilterReduceFlatMap20170411
//
//  Created by Tennant Shaw on 4/11/17.
//  Copyright © 2017 Tennant Shaw. All rights reserved.
//

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


//1.
func names(_ input: [String: Set<String>]) -> [String] {
    let unsortedListOfNames = input.map({ (key, _) -> String in
        return key
    })
    return unsortedListOfNames.sorted()
}


//2.
func animalCount(_ input: [String: Set<String>]) -> [(name: String, count: Int)] {
    let unsortedListOfNames: [(String, Int)] = input.map({ (key, value) in
        return (key, value.count)
    })
    return unsortedListOfNames.sorted(by: { (lhs, rhs) in lhs < rhs })
}


//3.
func spoilSport(_ input: [String: Set<String>]) -> Set<String> {
    let aHole = input.filter{ $0.value.count == 0 }.map{$0.key}
    return Set<String>(aHole)
}

//4.
func findStudent(_ input: [String: Set<String>], animalLover: Bool) -> Set<String> {
    
    let mostAnimalsLoved = input.reduce(input.first!) { (key, element) in
        if element.value.count > key.value.count {
            return element
        } else {
            return key
        }
    }


    let leastAnimalsLoved = input.reduce(input.first!) { (key, element) in
        if element.value.count < key.value.count {
            return element
        } else {
            return key
        }
    }

}

//5.
func averageCount(_ input: [String: Set<String>]) -> Int {
    let count: [Int] = input.values.map({$0.count})
    let average = floor(Double(count.reduce(0, +) / (count.count)))
    return Int(average)
}

//6.
func allAnimals1(_ input: [String: Set<String>]) -> [Set<String>] {
    let sortedStudentList = input.sorted { (lhs, rhs) in (lhs.key < rhs.key)}
    var sortedAnimalList = [Set<String>]()
    
    for (_, value) in sortedStudentList {
        sortedAnimalList.append(value)
    }
    return sortedAnimalList
}

//7.
func allAnimals2(_ input: [String: Set<String>]) -> [String] {
    let sortedAnimalLists: [Set<String>] = allAnimals1(students)
    let sortedAnimalList: [String] = sortedAnimalLists.flatMap ({ $0 })
    print(sortedAnimalList)
    return sortedAnimalList
}



