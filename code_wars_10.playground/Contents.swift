import UIKit
//:**Find The Parity Outlier**

/**
   You are given an array (which will have a length of at least 3, but could be very large) containing integers. The array is either entirely comprised of odd integers or entirely comprised of even integers except for a single integer N. Write a method that takes the array as an argument and returns this "outlier" N.
 - `Example`: [2, 4, 0, 100, 4, 11, 2602, 36];  Should return: 11 (the only odd number)
 - `Example`: [160, 3, 1719, 19, 11, 13, -21]; Should return: 160 (the only even number)
 */
func findOutlier(_ array: [Int]) -> Int {
    let evenArray = array.filter{abs($0 % 2) == 0}
    if evenArray.count == 1 {return evenArray.max()!}
    else {
        let oddArray = array.filter{abs($0 % 2) == 1}
        return oddArray.max()!
    }
}
findOutlier([8, 80, 12,14,-15,22,-34,-8]) //-15
