import UIKit

//:**Persistent Bugger**

/**
  Function `persistence` takes in a positive parameter num and returns its multiplicative persistence, which is the number of times you must multiply the digits in num until you reach a single digit.
 - `Example`: persistence(for: 39) === 3 // because 3*9 = 27, 2*7 = 14, 1*4=4 and 4 has only one digit;
 - `Example`: persistence(for: 999) === 4 // because 9*9*9 = 729, 7*2*9 = 126, 1*2*6 = 12, and finally 1*2 = 2;
 - `Example`: persistence(for: 4) === 0 // because 4 is already a one-digit number.

 - Authors: Fuad Rustamov
 */
func persistence(for num: Int) -> Int {
    guard String(num).count > 1 else {return 0}
    var mult : Int
    var mutableNum = num
    var count = 0 //Number of times you must multiply the digits in num until you reach a single digit.
    while String(mutableNum).count > 1 {
        count += 1
        mult = 1
        repeat {
            mult *= (mutableNum%10)
            mutableNum /= 10
        }while String(mutableNum).count > 1
        mutableNum =  mult*mutableNum
    }
    return count
}
persistence(for: 28) // 2*8 = 16, 1*6 = 6 => multiplicative persistence = 2
persistence(for: 68) // 6*8 = 48, 4*8 = 32, 3*2 = 6 => multiplicative persistence = 3

