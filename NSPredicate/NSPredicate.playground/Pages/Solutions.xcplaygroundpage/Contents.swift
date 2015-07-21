//: [Previous](@previous)

import Foundation


/*:

# KeyPath Enum Solved Problem


*/

class State: NSObject {
    let name: String
    init(name: String) {
        self.name = name
    }
    
    // description lets you pretty print this class' instances in the sidebar
    override var description: String {
        return self.name
    }
}

class City: NSObject {
    let name: String
    let state: State
    
    init(name: String, state: State) {
        self.name = name
        self.state = state
    }
    
    override var description: String {
        return self.name + " - \(self.state)"
    }
}

class Person: NSObject {    // Must inherit from NSObject
    let name: String
    let age: Int
    let city: City?
    
    init(name: String, age: Int, city: City) {
        self.name = name
        self.age = age
        self.city = city
    }
    
    // description lets you pretty print this class' instances in the sidebar
    override var description: String {
        return self.name + " - \(self.age) years old - \(self.city)"
    }
}



let ca = State(name: "CA")
let ny = State(name: "NY")


let sf = City(name: "San Francisco", state: ca)
let nyc = City(name: "New York", state: ny)

let groucho = Person(name: "Groucho", age: 50, city: nyc)
let chicco = Person(name: "Chicco", age: 61, city: nyc)
let harpo = Person(name: "Harpo", age: 45, city: sf)
let zeppo = Person(name: "Zeppo", age: 61, city: sf)


let people: NSArray = [groucho, chicco, harpo, zeppo]

let allInEC = NSPredicate(format: "%K = %@", "city.state.name", "CA")
people.filteredArrayUsingPredicate(allInEC)

//: [Next](@next)
