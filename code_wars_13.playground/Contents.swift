import UIKit

//: **Pyramid Array**

/**
 Write a function that when given a number >= 0, returns an Array of ascending length subarrays.
- Note: The subarrays should be filled with 1s.
 */
func pyramid(_ n: Int) -> [[Int]] {
    var resultArray : [[Int]] = []
    guard n != 0 else {return resultArray}
    for i in 1...n {resultArray.append(Array(repeating: 1,count: i))}
    return resultArray
}

print(pyramid(3)) //[[1], [1, 1], [1, 1, 1]]
