//: [Previous](@previous)

/*:

# Basic Comparisons



- =, ==: The left-hand expression is equal to the right-hand expression.
- >=, =>: The left-hand expression is greater than or equal to the right-hand expression.
- <=, =<: The left-hand expression is less than or equal to the right-hand expression.
- >: The left-hand expression is greater than the right-hand expression.
- <: The left-hand expression is less than the right-hand expression.
- !=, <>: The left-hand expression is not equal to the right-hand expression.
- BETWEEN: The left-hand expression is between, or equal to either of, the values specified in the right-hand side. The right-hand side is a two value array (an array is required to specify order) giving upper and lower bounds. For example, 1 BETWEEN { 0 , 33 }, or $INPUT BETWEEN { $LOWER, $UPPER }.



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

💻 __EXERCISE__: filter all people that's not 50 years old

*/



/*:

💻 __EXERCISE__: filter all people younger that 60 years old

*/




//: [Next](@next)
