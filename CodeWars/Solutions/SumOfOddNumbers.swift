//
//  SumOfOddNumbers.swift
//  CodeWars
//
//  Created by Afir Thes on 18.12.2022.
//

import Foundation

/*
 
 Given the triangle of consecutive odd numbers:

              1
           3     5
        7     9    11
    13    15    17    19
 21    23    25    27    29
 ...
 Calculate the sum of the numbers in the nth row of this triangle (starting at index 1) e.g.: (Input --> Output)

 1 -->  1
 2 --> 3 + 5 = 8
 _
*/

class SumOfOddNumbers {

    
    func rowSumOddNumbers(_ row: Int) -> Int {
        
        var countInRow = 0
        var counter = 1
        var arr:[Int] = []
        for _ in 1...row {
            arr = []
            var s = ""
            for _ in 0...countInRow {
                s = s + " " + String(counter)
                arr.append(counter)
                counter += 2
            }

            countInRow += 1
        }
        
        return arr.reduce(0, +)
    }

    func testBasic() {
        print("--- Testing: \(Self.self) \(#function) ---")
        XCTAssertEqual(rowSumOddNumbers(1), 1)
        XCTAssertEqual(rowSumOddNumbers(2), 8)
        XCTAssertEqual(rowSumOddNumbers(13), 2197)
        XCTAssertEqual(rowSumOddNumbers(19), 6859)
        XCTAssertEqual(rowSumOddNumbers(41), 68921)
        XCTAssertEqual(rowSumOddNumbers(42), 74088)
        XCTAssertEqual(rowSumOddNumbers(74), 405224)
        XCTAssertEqual(rowSumOddNumbers(86), 636056)
        XCTAssertEqual(rowSumOddNumbers(93), 804357)
        XCTAssertEqual(rowSumOddNumbers(101), 1030301)
        print("")
    }

}
