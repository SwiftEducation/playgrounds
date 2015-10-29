/*:
> [Previous](@previous)

# Exercise Solutions
*/
import Foundation

class State: NSObject {
    
    let name: String
    
    init(name: String) {
        self.name = name
    }
    
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
        return self.name
    }
    
}

class Person: NSObject {
    
    let name: String
    let age: Int
    let city: City
    
    init(name: String, age: Int, city: City) {
        self.name = name
        self.age = age
        self.city = city
    }
    
    override var description: String {
        return "\(self.name), age \(self.age), in \(city.name)"
    }
    
}
/*:
Here's a solution to the last exercise on the [KeyPath](KeyPaths) page.
*/
let california = State(name: "CA")
let newYork = State(name: "NY")

let sf = City(name: "San Francisco", state: california)
let nyc = City(name: "New York", state: newYork)

let groucho = Person(name: "Groucho", age: 50, city: nyc)
let chicco = Person(name: "Chicco", age: 61, city: nyc)
let harpo = Person(name: "Harpo", age: 45, city: sf)
let zeppo = Person(name: "Zeppo", age: 61, city: sf)

let people: NSArray = [groucho, chicco, harpo, zeppo]

let californians = NSPredicate(format: "%K = %@", "city.state.name", "CA")
people.filteredArrayUsingPredicate(californians)
//:> [Next](@next)
