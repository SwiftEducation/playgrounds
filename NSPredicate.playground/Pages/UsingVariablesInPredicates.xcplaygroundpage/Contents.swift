/*:
> [Previous](@previous)

# Using Format Specifiers with Predicate Strings

Consider our simple `Person` class and our collection of `Person` objects.
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

let groucho = Person(name: "Groucho", age: 50)
let chicco = Person(name: "Chicco", age: 61)
let harpo = Person(name: "Harpo", age: 45)
let zeppo = Person(name: "Zeppo", age: 61)

let people: NSArray = [groucho, chicco, harpo, zeppo]

/*:
We can use format specifiers, such as:

- `%d` for numeric literals
- `%@` for var arg substitution of an object value (often a String, number or date)

*/
let personsAged61 = NSPredicate(format: "age = %d", 61) // 61 is a numeric literal
people.filteredArrayUsingPredicate(personsAged61)

// The value of an NSNumber object is used here
let personsAged61WithObject = NSPredicate(format: "age = %@", NSNumber(int: 61))
people.filteredArrayUsingPredicate(personsAged61WithObject)
/*:
💻 __Exercise__: Strings are objects. Try filtering the `people` array with name `"Groucho"` using the `%@` var arg format specifier.
*/




/*:
💻 __Exercise__: Filter for all Person objects with an age greater than or equal to 50.
*/




//:> [Next](@next)
