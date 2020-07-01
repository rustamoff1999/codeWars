import UIKit
 //:**Write number in expanded Form**
/**
 This program writes a number in expanded Form.
 - `Example`: expandedForm 12    -- Should return '10 + 2'
             expandedForm 42    -- Should return '40 + 2'
             expandedForm 70304 -- Should return '70000 + 300 + 4'
 */
func expandedForm(_ num: Int) -> String {
    var array = String(num).compactMap{Int(String($0))}
    var result = ""
    for i in array {
        if i != 0 {
            result += String(i * Int(pow(Double(10),Double(array.count-1)))) + " + "
            array.removeFirst()
        }
        else {
            array.removeFirst()
        }
    }
    //Deleting last " + "
    let subString = result[result.startIndex..<result.index(before:result.endIndex)]
    let subString2 = subString[subString.startIndex..<subString.index(before:subString.endIndex)]
     return String(subString2[subString2.startIndex..<subString2.index(before:subString2.endIndex)])

}
expandedForm(7056724) //"7000000 + 50000 + 6000 + 700 + 20 + 4"


