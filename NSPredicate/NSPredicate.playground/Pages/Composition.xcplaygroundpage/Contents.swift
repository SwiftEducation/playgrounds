//: [Previous](@previous)
/*:

# Basic Compound Predicates
*/
/*:- `AND, &&: Logical AND`
- `OR, ||: Logical OR`
- `NOT, !: Logical NOT`

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

All people with age 61 AND who lives in NYC 

*/

let pred = NSPredicate(format: "%K = %@ AND age = %d", "city.cityName", "New York", 61)
people.filteredArrayUsingPredicate(pred)


//: [Next](@next)
