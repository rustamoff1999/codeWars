import UIKit

//:**Numbers with this digit inside**

/**
  This func finds numbers from 1 to `x`inclusive with the digit `d` inside
    - Parameter x : Int64
    - Parameter d: Int64
    - Returns: Array of 3 elements: `Count` of numbers, `sum` and `product`
    - Throws: Error when parameters are not `Int64`
    - Authors: Fuad Rustamov
 */
func numbersWithDigitInside(_ x: Int64, _ d: Int64) -> [Int64] {
    var arrayOfNumbers : [Int64] = []
    var arrayWithDigit = [Int64]()
    for nextNumber in 1...x {
        let stringNumber = String(nextNumber)
        arrayOfNumbers =  stringNumber.compactMap{Int64(String($0))}
        if  arrayOfNumbers.contains(d) {
            arrayWithDigit.append(nextNumber)
            arrayOfNumbers = []
        }
    }
    if arrayWithDigit.count == 0 {
        return [0,0,0]
    }
    let resultArray : Array<Int64> = [Int64(arrayWithDigit.count),Int64(arrayWithDigit.reduce(0,+)),Int64(arrayWithDigit.reduce(1,*))]
    return resultArray
}

numbersWithDigitInside(21, 5) //[2,20,75]
numbersWithDigitInside(50, 2) //[14,333,2344524143689729000]
