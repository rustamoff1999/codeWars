import UIKit
//:**Run-length Encoding**

/**
 Your task is to write Run-length encoding function.
 
 Run-length encoding (RLE) is a very simple form of lossless data compression in which runs of data (that is, sequences in which the same data value occurs in many consecutive data elements) are stored as a single data value and count, rather than as the original run.
 -   Authors: Fuad Rustamov
 - `Example`: encode("aaabb77daa8cccd") // Should return "3a2b27d2a83cd"
 */
func encode(_ input: String) -> String {
    var result : String = ""
    guard input.count>0 else {return result}
    guard input.count>1 else {return input}
    var count = 1
    var strarr = input.compactMap{String(String($0))}
    for i in 1...strarr.count-1 {
        if strarr[i] == strarr[i-1] {count+=1}
        else {
            if count == 1 {
                result += strarr[i-1]
                count = 1
                strarr.removeFirst(count-1)
            }
            else {
                result += String(count)+strarr[i-1]
                count = 1
                strarr.removeFirst(count-1)
            }
        }
    }
    strarr.removeFirst(strarr.count-1)
    guard count > 1 else {return result + strarr[strarr.count-1]}
    return result + String(count) + strarr[strarr.count-1]
}
encode("aaabb77daa8cccd")//"3a2b27d2a83cd"
