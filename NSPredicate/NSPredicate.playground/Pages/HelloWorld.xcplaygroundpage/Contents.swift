//: [Previous](@previous)
/*:

## NSPredicate Hello World

Given the Person class:
*/
import Foundation

class Person: NSObject {    // Must inherit from NSObject or NSPredicate will fail at runtime
    let name: String
    let age: Int 
    
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
    
    // description lets you pretty print this class' instances in the sidebar
    override var description: String {
        return self.name + " - \(self.age) years old"
    }
}

/*:

and a bunch of People

*/

let groucho = Person(name: "Groucho", age: 50)
let chicco  = Person(name: "Chicco", age: 61)
let harpo   = Person(name: "Harpo", age: 45)
let zeppo   = Person(name: "Zeppo", age: 61)

let people: NSArray = [groucho, chicco, harpo, zeppo]
// using a NSArray here because predicates work with them, not with regular Swift Arrays

/*:

we can get __all people of age == 61__ with a simple predicate

*/

let allAge61 = NSPredicate(format: "age = 61")

people.filteredArrayUsingPredicate(allAge61)

/*:

we can also __filter by name__

*/


let namesPredicate = NSPredicate(format: "name = 'Harpo'")

people.filteredArrayUsingPredicate(namesPredicate)


/*:

💻 __Your turn__: try to filter all people aged 50 years old, then everyone called _Zeppo_

*/



/*:

💻 __SOME DESTRUCTIVE FUN__: remove the NSObject parent class from Person and see what happens (__save before__)

*/


/*:

💻 More destructive fun__: change the NSArray from people, to create a Swift Array and see what happens
*/



/*:

💻 You can use `=` or `==` in comparisons. Try it

*/



//: [Next](@next)
