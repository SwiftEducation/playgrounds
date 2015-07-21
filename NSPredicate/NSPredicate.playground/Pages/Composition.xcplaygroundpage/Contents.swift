//: [Previous](@previous)
/*:

# Basic Compound Predicates
*/
/*:- `AND, &&: Logical AND`
- `OR, ||: Logical OR`
- `NOT, !: Logical NOT`

*/
import Foundation

class City: NSObject {
    let name: String
    
    init(name: String) {
        self.name = name
    }
    
    // description lets you pretty print this class' instances in the sidebar
    override var description: String {
        return self.name
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
        if let city = self.city {
            return self.name + " - \(self.age) years old - \(city)"
        }
        return self.name + " - \(self.age) years old"
    }
}

let sf = City(name: "San Francisco")
let nyc = City(name: "New York")

let groucho = Person(name: "Groucho", age: 50, city: nyc)
let chicco = Person(name: "Chicco", age: 61, city: nyc)
let harpo = Person(name: "Harpo", age: 45, city: sf)
let zeppo = Person(name: "Zeppo", age: 61, city: sf)

let people: NSArray = [groucho, chicco, harpo, zeppo]

/*:

All people with age 61 AND who lives in NYC 

*/

let pred = NSPredicate(format: "%K = %@ AND age = %d", "city.name", "New York", 61)
people.filteredArrayUsingPredicate(pred)


//: [Next](@next)
