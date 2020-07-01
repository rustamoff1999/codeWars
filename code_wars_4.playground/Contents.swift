import UIKit

//:**Balanced Number**

/**
 This func defines : The given number is `Balanced` or `Not Balanced`. Balanced number is the number that * The sum of all digits to the left of the middle digit(s) and the sum of all digits to the right of the middle digit(s) are equal*.
   - Parameter number: Int
   - Returns: String : "Balanced" or "Not Balanced"
   - Throws: Error when parameter is not Int
   - Authors: Fuad Rustamov
   - Note: If the number has an odd number of digits then there is only one middle digit. otherwise, there are two middle digits. The middle digit(s) should not be considered when determining whether a number is balanced or not.
*/
func balancedNumber(_ number: Int) -> String {
    let array = String(number).compactMap{(Int(String($0)))}
    let count = array.count
    if count == 1 {
        return "Balanced"
    }
    if count % 2 == 0 {
        if array.suffix(count/2 - 1).reduce(0,+) == array.dropLast(count/2+1).reduce(0,+) {
            return "Balanced"
        }
        else {
            return "Not Balanced"
        }
    }
    else {
        if array.suffix(count/2).reduce(0,+) == array.dropLast(count/2+1).reduce(0,+) {
            return "Balanced"
        }
        else {
            return "Not Balanced"
        }
    }
        
}

balancedNumber(1) //Balanced
balancedNumber(121) //Balanced
balancedNumber(234514) //Balanced
balancedNumber(71481) //Not Balanced
