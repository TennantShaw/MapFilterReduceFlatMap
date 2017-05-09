//
//  MapFilterReduceFlatMap20170411Tests.swift
//  MapFilterReduceFlatMap20170411Tests
//
//  Created by Tennant Shaw on 4/11/17.
//  Copyright © 2017 Tennant Shaw. All rights reserved.
//

import XCTest
@testable import MapFilterReduceFlatMap20170411

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


class MapFilterReduceFlatMap20170411Tests: XCTestCase {
    func testNames() {
        let result = names(students)
        let expected = ["John", "Jon", "Jonah", "Jonas", "Jonathan", "Siouxsie", "Susan", "Susie", "Suzanne"]
        XCTAssertEqual(result, expected)
    }
    
    func testAnimalCount() {
        let result = animalCount(students)
        let expected: [(name: String, count: Int)] = [("John", 4), ("Jon", 3), ("Jonah", 13), ("Jonas", 2), ("Jonathan", 2), ("Siouxsie", 5), ("Susan", 4), ("Susie", 0), ("Suzanne", 2)]

        XCTAssertEqual(result.count, expected.count)

        
        for (resultItem, expectedItem) in zip(result, expected) {
            XCTAssertEqual(resultItem.name, expectedItem.name)
            XCTAssertEqual(resultItem.count, expectedItem.count)
        }
    }
    
    func testSpoilSport() {
        let result = spoilSport(students)
        let expected: Set<String> = (["Susie"])
        XCTAssertEqual(result, expected)
    }
    
    func testAverageCount() {
        let result = averageCount(students)
        let expected: Int = 3
        XCTAssertEqual(result, expected)
    }
    
    func testAllAnimals1() {
        let result = allAnimals1(students)
        let expected: [Set<String>] = [Set(["Goat", "Elephant", "Squid", "Rabbit"]), Set(["Butterfly", "Horse", "Hippopotamus"]), Set(["Dog", "Elephant", "Goat", "Falcon", "Octopus", "Lion", "Whale", "Porcupine", "Opossum", "Squid", "Armadillo", "Zebra", "Rabbit"]), Set(["Cheetah", "Tiger"]), Set(["Cobra", "Snail"]), Set(["Elephant", "Zebra", "Falcon", "Porcupine", "Rabbit"]), Set(["Goat", "Armadillo", "Porcupine", "Opossum"]), Set([]), Set(["Porcupine", "Zebra"])]
        XCTAssertEqual(result, expected)
    }
    
    func testAllAnimals2() {
        let result = allAnimals2(students)
        let expected: [String] = ["Goat", "Elephant", "Squid", "Rabbit", "Butterfly", "Horse", "Hippopotamus", "Dog", "Elephant", "Goat", "Falcon", "Octopus", "Lion", "Whale", "Porcupine", "Opossum", "Squid", "Armadillo", "Zebra", "Rabbit", "Cheetah", "Tiger", "Cobra", "Snail", "Elephant", "Zebra", "Falcon", "Porcupine", "Rabbit", "Goat", "Armadillo", "Porcupine", "Opossum", "Porcupine", "Zebra"]
        XCTAssertEqual(result, expected)
    }
}





