//
//  StrongNumber .swift
//  CodeWars
//
//  Created by Afir Thes on 18.12.2022.
//

import Foundation

/*
 
Strong number is the number that the sum of the factorial of its digits is equal to number itself.
 
For example, 145 is strong, since 1! + 4! + 5! = 1 + 24 + 120 = 145.
 
*/

class StrongNumber {
    
    static func factorial(_ number: Int) -> Int {
        if number == 0 { return 1 }
        if number == 1 { return 1 }
        return number * factorial(number - 1)
    }
    
    func strongNumber(_ number: Int) -> String {
        let result = Array("\(number)")
            .map{ Int("\($0)")! }
            .map { Self.factorial($0)}
            .reduce(0) { $0 + $1 }

        if number == Int(result) {
            return "STRONG!!!!"
        } else {
            return "Not Strong !!"
        }
    }

    func basicTests() {
      print("--- Testing: \(Self.self) \(#function) ---")
      XCTAssertEqual(strongNumber(1), "STRONG!!!!")
      XCTAssertEqual(strongNumber(2), "STRONG!!!!")
      XCTAssertEqual(strongNumber(145), "STRONG!!!!")
      XCTAssertEqual(strongNumber(7), "Not Strong !!")
      XCTAssertEqual(strongNumber(93), "Not Strong !!")
      XCTAssertEqual(strongNumber(185), "Not Strong !!")
      print("")
    }
}
