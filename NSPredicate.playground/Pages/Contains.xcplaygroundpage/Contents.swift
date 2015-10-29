/*:
> [Previous](@previous)

# String Comparisons with `CONTAINS`

`CONTAINS` gives you even more matching power!
*/
import Foundation

class Province: NSObject {
    
    let name: String
    
    init(name: String) {
        self.name = name
    }
    
    override var description: String {
        return self.name
    }
    
}

let cadiz = Province(name: "Cádiz")
let malaga = Province(name: "Málaga")
let logrono = Province(name: "Logroño")
let madrid = Province(name: "Madrid")
let lugo = Province(name: "Lugo")

let provinces: NSArray = [cadiz, malaga, logrono, madrid, lugo]
/*:
The `CONTAINS` comparison returns the results containing any part of the string that you specify.
*/
let provincesContainingA = NSPredicate(format: "name CONTAINS[cd] 'a'")

provinces.filteredArrayUsingPredicate(provincesContainingA)
/*:
💻 __Exercise__: Filter for all provinces whose names include `ad`.
*/





//:> [Next](@next)
