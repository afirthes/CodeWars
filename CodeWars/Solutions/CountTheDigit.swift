//
//  Count the Digit.swift
//  CodeWars
//
//  Created by Afir Thes on 18.12.2022.
//

import Foundation

/*
 Square all numbers k (0 <= k <= n) between 0 and n.
 Count the numbers of digits d used in the writing of all the k**2.
 Call nb_dig (or nbDig or ...) the function taking n and d as parameters and returning this count.
 
 Examples:
 n = 10, d = 1
 the k*k are 0, 1, 4, 9, 16, 25, 36, 49, 64, 81, 100
 We are using the digit 1 in: 1, 16, 81, 100. The total count is then 4.
 
 nb_dig(25, 1) returns 11 since
 the k*k that contain the digit 1 are:
 1, 16, 81, 100, 121, 144, 169, 196, 361, 441.
 So there are 11 digits 1 for the squares of numbers between 0 and 25.
 
 Note that 121 has twice the digit 1.
*/

class CountTheDigit {
    
    func nbDig(_ n: Int, _ d: Int) -> Int {
        
        let dChar = Character("\(d)")
        
        var counter = 0
        
        for x in 0...n {
            let k = x * x
            let s = String(k)
            
            
            for c in s {
                if c == dChar {
                    counter += 1
                }
            }
        }
        
        return counter
    }
    
    func nbDig_best(_ n: Int, _ d: Int) -> Int {
        return (0...n).map{"\($0 * $0)".filter { $0 == Character("\(d)")}}.flatMap { $0 }.count
    }
    
    func testExample() {
        print("--- Testing: \(Self.self) \(#function) ---")
        XCTAssertEqual(nbDig(5750, 0), 4700)
        XCTAssertEqual(nbDig(11011, 2), 9481)
        XCTAssertEqual(nbDig(12224, 8), 7733)
        XCTAssertEqual(nbDig(11549, 1), 11905)
        print("")
    }
    
}


