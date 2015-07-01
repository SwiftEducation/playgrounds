//: [Previous](@previous)


/*:
# Keypaths

A keypath is, as its name implies, a way to traverse your object graph from object to object. For example, if you have a Person class and every person lives in a different Town, you can get the town's name using `somePerson.city.cityName`

*/

import Foundation

class Town: NSObject {
    var cityName: String = "NYC"
    
    init(name: String) {
        self.cityName = name
    }
}

class Person: NSObject {    // Must inherit from NSObject
    var name: String = "John Doe"
    var age: Int = 0
    var city: Town?
    
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
}

let sf = Town(name: "San Francisco")
let nyc = Town(name: "New York")

let groucho = Person(name: "Groucho", age: 50)
let chicco = Person(name: "Chicco", age: 61)
let harpo = Person(name: "Harpo", age: 45)
let zeppo = Person(name: "Zeppo", age: 61)

groucho.city = nyc
chicco.city = nyc
harpo.city = sf
zeppo.city = sf

let people: NSArray = [groucho, chicco, harpo, zeppo]

/*:

Filter all people who lives in San Francisco, using a KeyPath

*/

let allInSF = NSPredicate(format: "%K = %@", "city.cityName", "San Francisco")
people.filteredArrayUsingPredicate(allInSF)


/*:

💻 __EXERCISE__: filter all people living in New York

*/




/*:

💻 __EXERCISE__: add a new class (State) with property name. Add State to the city. Filter all people living in the California State

*/


//: [Solved exercise - try to do it, it's better 😉](Solutions)


//: [Next](@next)
