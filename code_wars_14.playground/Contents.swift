import UIKit

//:**A disguised sequence** (Got 6 kyu in codewars!)
/**
 Given u0 = 1, u1 = 2 and the relation 6u_n*u_(n+1)-5u_n*u_(n+2)+u_(n+1)*u_(n+2) = 0 calculate un for any integer n >= 0.
 - `Algorithm`:  is to find which sequence is hidden behind un.
 - `Examples`:  fcn(17) -> 131072, fcn(21) -> 2097152
 */
func fcn(_ n: UInt64) -> UInt64 {
    return UInt64(pow(Double(2),Double(n)))
}

fcn(5) //32

//That's exactly 2^n sequence
