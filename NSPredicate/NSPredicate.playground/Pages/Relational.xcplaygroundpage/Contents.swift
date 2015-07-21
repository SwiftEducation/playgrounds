//: [Previous](@previous)

/*:
# Relational operators
*/
/*:
- ANY, SOME: any of the elements in the following expression. `ANY children.age < 18`
- ALL: all of the elements in the following expression. `ALL children.age < 18`
- NONE: none of the elements in the following expression. `NONE children.age < 18`. This is logically equivalent to NOT (ANY ...)

*/

import Foundation

class City: NSObject {
    let cityName: String
    
    init(name: String) {
        self.cityName = name
    }
    
    // description lets you pretty print this class' instances in the sidebar
    override var description: String {
        return self.cityName
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

/*:## IN

Equivalent to an SQL IN operation, the left-hand side must appear in the collection specified by the right-hand side. For example, name IN { 'Ben', 'Melissa', 'Nick' }


*/
let pred = NSPredicate(format: "%K in {%@, %@}", "name", "Groucho", "Harpo")
people.filteredArrayUsingPredicate(pred)


//: [Next](@next)
