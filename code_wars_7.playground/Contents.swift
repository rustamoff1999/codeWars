import UIKit

//:**Consecutive strings**

/**
 You are given an array `strarr` of strings and an integer `k`. Your task is to return the first longest string consisting of k consecutive strings taken in the array.
 - Note: consecutive strings : follow one after another without an interruption.
 - Authors: Fuad Rustamov
 */

func longestConsec(_ strarr: [String], _ k: Int) -> String {
    let n = strarr.count
    guard n != 0 && k <= n && k > 0 else {
        return ""
    }
    guard n != 1 else {
        return strarr[0]
    }
    var max = strarr[0] //:The variable of longest consecutive string
    for i in 0...n-1 {  //:Running throw the `strarr` array
        var nextKWords: String = "" //:The variable of string that consists of `k` words
        if (k+i-1) > (n-1) {  //:Checking if we went beyond the boundaries of the array
            break
        }
        for j in i...k+i-1 { //:Looking at next `k` words
            nextKWords += strarr[j]
        }
        if nextKWords.count > max.count { //:Checking if `k` words that is under consideration is longer than max
            max = nextKWords
        }
    }
    return max
}

longestConsec(["zone", "abigail", "theta", "form", "libe", "zas", "theta", "abigail"], 2) //"abigailtheta"
