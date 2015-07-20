/*:

# NSPredicate

The NSPredicate class is used to define __logical conditions__ used to constrain a search either for a __fetch__ or for __in-memory__ filtering.

- if fetching objects, they arrive filtered from disk. This is used with [Core Data](https://developer.apple.com/library/mac/documentation/Cocoa/Conceptual/CoreData/cdProgrammingGuide.html)
- if the predicate is used in memory, we filter content of arrays
*/

/*:
You use predicates to represent logical conditions.

We can create predicates from:
- instances of NSComparisonPredicate, NSCompoundPredicate, and NSExpression
- a format string which is parsed by the class methods on NSPredicate

We're going to focus on the second approach: NSPredicate then _feels like_ using SQL with your objects

*/

/*:

__NOTE__ if you don't know how to use a Playground, head over to [How to use Playgrounds](HowToUsePlaygrounds)
*/

//: [Predicates Hello world](HelloWorld)
