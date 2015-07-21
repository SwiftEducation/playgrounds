//: [Previous](@previous)

import Foundation

class Province: NSObject {    // Must inherit from NSObject
    let name: String
    
    init(name: String) {
        self.name = name
    }
    
    // description lets you pretty print this class' instances in the sidebar
    override var description: String {
        return self.name
    }
}

let cadiz = Province(name: "Cádiz")
let malaga = Province(name: "Málaga")
let logrono = Province(name: "Logroño")
let madrid = Province(name: "Madrid")
let lugo = Province(name: "lugo")

let provinces: NSArray = [cadiz, malaga, logrono, madrid, lugo]


/*:

Contains give you even more power!

*/


let provincesStartingWithM = NSPredicate(format: "name contains [cd] 'a'")

provinces.filteredArrayUsingPredicate(provincesStartingWithM)

//: [Next](@next)
