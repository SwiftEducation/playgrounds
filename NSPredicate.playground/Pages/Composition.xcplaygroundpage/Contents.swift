/*:
> [Previous](@previous)

# Basic Compound Predicates

Compound predicates contain one or more predicates joined by the logical operators `AND`, `OR`, and `NOT`.
- `AND`, `&&` Logical `AND`
- `OR`, `||` Logical `OR`
- `NOT`, `!` Logical `NOT`
*/
import Foundation

class City: NSObject {
    
    let name: String
    
    init(name: String) {
        self.name = name
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

let sf = City(name: "San Francisco")
let nyc = City(name: "New York")

let groucho = Person(name: "Groucho", age: 50, city: nyc)
let chicco = Person(name: "Chicco", age: 61, city: nyc)
let harpo = Person(name: "Harpo", age: 45, city: sf)
let zeppo = Person(name: "Zeppo", age: 61, city: sf)

let people: NSArray = [groucho, chicco, harpo, zeppo]
/*:
For example, you can filter a collection for all people who are age 61 `AND` who live in New York.
*/
let newYorkersAged61 = NSPredicate(format: "%K = %@ AND age = %d", "city.name", "New York", 61)
people.filteredArrayUsingPredicate(newYorkersAged61)
/*:
💻 __Exercise__: Filter for all people younger than 50 who live in San Francisco.
*/




//:> [Next](@next)
