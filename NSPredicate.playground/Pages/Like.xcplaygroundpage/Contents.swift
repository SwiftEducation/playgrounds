/*:
> [Previous](@previous)

# String Comparisons

Using operators such as `LIKE` and `BEGINSWITH` provides way to perform simple String pattern matching.
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
let lugo = Province(name: "lugo") // Intentionally lower case.

let provinces: NSArray = [cadiz, malaga, logrono, madrid, lugo]
/*:
## The `LIKE` String Comparison Operator

To filter for all provinces whose name starts with "M":
*/
let mProvinces = NSPredicate(format: "name LIKE 'M*'")
provinces.filteredArrayUsingPredicate(mProvinces)

let maProvinces = NSPredicate(format: "name LIKE 'Ma*'")
provinces.filteredArrayUsingPredicate(maProvinces)
/*:
Notice how the city named Málaga is not returned in the second filter above, since it starts with `Má` and not `Ma`.
To filter all provinces starting with `Ma`, regardless of accents, we can append the `[d]` option, which means to ignore diacritics.
*/
let maProvinces2 = NSPredicate(format: "name LIKE[d] 'Ma*'")
provinces.filteredArrayUsingPredicate(maProvinces2)
/*:
Note that string comparison predicates are case sensitive. To perform the filter without case sensitivity, you can use the `[c]` option.
*/
let lProvincesCaseDiacritics = NSPredicate(format: "name LIKE[cd] 'l*'")
provinces.filteredArrayUsingPredicate(lProvincesCaseDiacritics)
/*:
💻 __Exercise__: filter provinces to show all with names _ending_ in `d`.
*/





/*:
## Other String Comparison Operators

- `BEGINSWITH` The left-hand expression begins with the right-hand expression
- `CONTAINS` The left-hand expression contains the right-hand expression
- `ENDSWITH` The left-hand expression ends with the right-hand expression

Note that wildcards, such as `*` or `?`, are not allowed using `BEGINSWITH`.
*/
let provincesBeginningWithL = NSPredicate(format: "name BEGINSWITH[cd] 'l'")
provinces.filteredArrayUsingPredicate(provincesBeginningWithL)
/*:
💻 __Exercise__: Filter for all provinces whose names end in `o`.
*/






//:> [Next](@next)
