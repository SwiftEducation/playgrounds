/*:
>[Previous](@previous)

# Aggregate Operations

Aggregate operations allow you to apply filters to properties that are themselves collections. For example, filtering for all people who have traveled to France, among other countries they may have traveled to.

- `ANY`, `SOME` Any of the elements in the following expression. `ANY children.age < 18`
- `ALL` All of the elements in the following expression. `ALL children.age < 18`
- `NONE` None of the elements in the following expression. `NONE children.age < 18`. This is logically equivalent to `NOT (ANY ...)`
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
    let visitedCities: [City]
    
    init(name: String, age: Int, city: City, visitedCities: [City]) {
        self.name = name
        self.age = age
        self.city = city
        self.visitedCities = visitedCities
    }
    
    override var description: String {
        return "\(self.name), age \(self.age), in \(city.name)"
    }
    
}

let sf = City(name: "San Francisco")
let nyc = City(name: "New York")

let usCities = [sf, nyc]
let frenchCities = [City(name: "Lyon"), City(name: "Marseille")]

let groucho = Person(name: "Groucho", age: 50, city: nyc, visitedCities: usCities)
let chicco = Person(name: "Chicco", age: 61, city: nyc, visitedCities: usCities)
let harpo = Person(name: "Harpo", age: 45, city: sf, visitedCities: frenchCities)
let zeppo = Person(name: "Zeppo", age: 61, city: sf, visitedCities: frenchCities)

let people: NSArray = [groucho, chicco, harpo, zeppo]
/*:
## `ANY`

Use `ANY` when you are happy with at least one object meeting the criteria.
*/
let visitedLyon = NSPredicate(format: "ANY visitedCities.name = 'Lyon'")
people.filteredArrayUsingPredicate(visitedLyon)
/*:
## `IN`
Equivalent to a SQL `IN` operation, the left-hand side must appear in the collection specified by the right-hand side. For example, name `IN { 'Ben', 'Melissa', 'Nick' }`.
*/
let pred = NSPredicate(format: "%K in {%@, %@}", "name", "Groucho", "Harpo")
people.filteredArrayUsingPredicate(pred)
//:> [Next](@next)
