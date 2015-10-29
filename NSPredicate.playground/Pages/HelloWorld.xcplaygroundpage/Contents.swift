/*:
> [Previous](@previous)

# NSPredicate Hello World

Consider a simple `Person` class:
*/
import Foundation

class Person: NSObject { // Must inherit from NSObject
    
    let name: String
    let age: Int 
   
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }

    // Just for convenience. See CustomStringConvertible.
    override var description: String {
        return "\(self.name), age \(self.age)"
    }

}
/*:
And consider a collection of `Person` objects:
*/
let groucho = Person(name: "Groucho", age: 50)
let chicco = Person(name: "Chicco", age: 61)
let harpo = Person(name: "Harpo", age: 45)
let zeppo = Person(name: "Zeppo", age: 61)

// NSPredicates are used with NSArray.
let people: NSArray = [groucho, chicco, harpo, zeppo]
/*:
We can get "all the people who are 61 years old" with a simple predicate:
*/
let personsAged61 = NSPredicate(format: "age = 61")

people.filteredArrayUsingPredicate(personsAged61)
/*:
We can filter on other properties too, such as `name`:
*/
let personsNamedHarpo = NSPredicate(format: "name = 'Harpo'")

people.filteredArrayUsingPredicate(personsNamedHarpo)
/*:
💻 __Exercise__: Try to filter all people who are older than 50 years old. Then try to filter the collection for `Person`s named "Zeppo."
*/




/*:

💻 __Some Destructive Fun__: Remove the NSObject parent class from Person and see what happens.

*/

/*:
💻 __More Destructive Fun__: Remove the `NSArray` type annotation from `people`, resulting in creating a Swift `Array` and see what happens.
*/

/*:
💻 __Exercise__: You can use either `=` or `==` in comparisons. Try it!
*/




//: > [Next](@next)
