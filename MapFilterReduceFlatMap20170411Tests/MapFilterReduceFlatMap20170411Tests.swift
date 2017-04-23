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
}





