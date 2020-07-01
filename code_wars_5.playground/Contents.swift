import UIKit

//:**Jumping Number**

/**
 This func defines whether a number is `Jumping` or not.
 - `Definition`: `Jumping` number is the number that All adjacent digits in it differ by 1.
 -   Note: The difference between ‘9’ and ‘0’ is not considered as 1. All single digit numbers are considered as `Jumping` numbers.
 - `Task`: Given a number, Find if it is Jumping or not .
 -   Authors: Fuad Rustamov

 */
func jumpingNumber(_ number: Int) -> String {
    let array = String(number).compactMap{(Int(String($0)))}
    guard array.count != 1 else {
        return "Jumping!!"
    }
    for i in 0..<array.count-1 {
        guard abs(array[i] - array[i+1]) == 1 else {
            return "Not!!"
        }
    }
    return "Jumping!!"
}

jumpingNumber(1234569) //Not Jumping
jumpingNumber(234345) //Jumping
