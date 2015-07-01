//: [Previous](@previous)

import Foundation


/*:

# KeyPath Enum Solved Problem


*/

class State: NSObject {
    var name = ""
    init(name: String) {
        self.name = name
    }
}

class Town: NSObject {
    var cityName: String = "NYC"
    var cityState: State = State(name: "NY")
    init(name: String) {
        self.cityName = name
    }
}

class Person: NSObject {    // Must inherit from NSObject
    var name: String = "John Doe"
    var age: Int = 0
    var city: Town = Town(name: "")
    
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
}

let ca = State(name: "CA")
let ny = State(name: "NY")


let sf = Town(name: "San Francisco")
sf.cityState = ny
let nyc = Town(name: "New York")
nyc.cityState = ca

let groucho = Person(name: "Groucho", age: 50)
let chicco = Person(name: "Chicco", age: 61)
let harpo = Person(name: "Harpo", age: 45)
let zeppo = Person(name: "Zeppo", age: 61)

groucho.city = nyc
chicco.city = nyc
harpo.city = sf
zeppo.city = sf

let people: NSArray = [groucho, chicco, harpo, zeppo]

let allInEC = NSPredicate(format: "%K = %@", "city.cityState.name", "NY")
people.filteredArrayUsingPredicate(allInEC)

//: [Next](@next)
