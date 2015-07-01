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

/*:## IN

Equivalent to an SQL IN operation, the left-hand side must appear in the collection specified by the right-hand side. For example, name IN { 'Ben', 'Melissa', 'Nick' }


*/
let pred = NSPredicate(format: "%K in {%@, %@}", "name", "Groucho", "Harpo")
people.filteredArrayUsingPredicate(pred)


//: [Next](@next)
