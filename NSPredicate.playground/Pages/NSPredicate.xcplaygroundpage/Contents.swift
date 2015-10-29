/*:

# NSPredicate

The [NSPredicate class](https://developer.apple.com/library/mac/documentation/Cocoa/Reference/Foundation/Classes/NSPredicate_Class/) is used to define logical conditions used to constrain a search either for a __fetch__ or for __in-memory__ filtering.

- Fetching objects with NSPredicate is frequently used with [Core Data](https://developer.apple.com/library/mac/documentation/Cocoa/Conceptual/CoreData/index.html).
- In-memory filtering can be applied to collections, such as an array of objects.

You use predicates to represent logical conditions that describe objects, such as "all of the puppies that have an age that is less than 1 year."

We can create predicates from:

1. Instances of [NSComparisonPredicate](https://developer.apple.com/library/mac/documentation/Cocoa/Reference/Foundation/Classes/NSComparisonPredicate_Class/), [NSCompoundPredicate](https://developer.apple.com/library/mac/documentation/Cocoa/Reference/Foundation/Classes/NSCompoundPredicate_Class/), and [NSExpression](https://developer.apple.com/library/mac/documentation/Cocoa/Reference/Foundation/Classes/NSExpression_Class/)
2. A format string which is parsed by NSPredicate class methods

In this playground, we're going to focus on the second approach: using format strings. In this manner, creating NSPredicate objects from format strings will feel quite a bit like using [SQL WHERE clauses](https://en.wikipedia.org/wiki/Where_(SQL)) with your objects

> If this is your first playground, head over to [How to Use Playgrounds](HowToUsePlaygrounds).
> Otherwise, dive in with [Predicates Hello World](HelloWorld).

*/