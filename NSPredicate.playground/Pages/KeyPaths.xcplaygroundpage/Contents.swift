/*:
> [Previous](@previous)

# Using Key Paths with Predicate Strings

A key path is a way to traverse your object graph from object to object. For example, if you have a `Person` class and every `Person` lives in a `City`, you can get the `City`  `name` using `somePerson.city.name`.
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
Show all the people who live in San Francisco, using a key path.
*/
let personsInSanFrancisco = NSPredicate(format: "%K = %@", "city.name", "San Francisco")
people.filteredArrayUsingPredicate(personsInSanFrancisco)
/*:
💻 __Exercise__: Filter the array for all people living in New York.
*/




/*:
💻 __Exercise__: Add a new `State` class with a single `String` property called `name`. Add a `State` property to the `City` class. Update the `City` object instantiation above, then filter for all people living in the state of California.
*/





/*:
> [See a Solution (but try it first!) 😉](Solutions)

> [Next](@next)
*/
