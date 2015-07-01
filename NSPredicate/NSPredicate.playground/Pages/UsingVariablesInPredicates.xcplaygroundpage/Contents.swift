//: [Previous](@previous)
/*:

# Using variables in our predicates

*/

import Foundation

class Person: NSObject {    // Must inherit from NSObject
    var name: String = "John Doe"
    var age: Int = 0
    
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
}

let groucho = Person(name: "Groucho", age: 50)
let chicco = Person(name: "Chicco", age: 61)
let harpo = Person(name: "Harpo", age: 45)
let zeppo = Person(name: "Zeppo", age: 61)

let people: NSArray = [groucho, chicco, harpo, zeppo]


/*:

We can use format parameters:

- %d: numbers
- %@: var arg substitution for an object value

*/

let allAge61 = NSPredicate(format: "age = %d", 61)  // 61 is just a number, not an Object
people.filteredArrayUsingPredicate(allAge61)


let allAge61Object = NSPredicate(format: "age = %@", NSNumber(int: 61)) // 61 here is @61: NSNumber
people.filteredArrayUsingPredicate(allAge61Object)

/*:

💻 __EXERCISE__: as Strings are objects, filter the person with name Groucho

*/





/*:

💻 __EXERCISE__: filter all people aged equal or over 50

*/




//: [Next](@next)
