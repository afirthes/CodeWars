//
//  BalancedNumber.swift
//  CodeWars
//
//  Created by Afir Thes on 18.12.2022.
//

import Foundation

/*
 
 A balanced number is a number where the sum of digits to the left of the middle digit(s) and the sum of digits to the right of the middle digit(s) are equal.
 
 If the number has an odd number of digits, then there is only one middle digit. (For example, 92645 has one middle digit, 6.) Otherwise, there are two middle digits. (For example, the middle digits of 1301 are 3 and 0.)
 
 The middle digit(s) should not be considered when determining whether a number is balanced or not, e.g. 413023 is a balanced number because the left sum and right sum are both 5.
 
 */


class BalancedNumber {
    
    func balancedNumber(_ number: Int) -> String {
        var arr:[Int] = Array("\(number)").map{ Int("\($0)")! }
        var left:Int = 0
        var right:Int = 0
        
        if (arr.count == 1) {
            return "Balanced"
        }
        
        if (arr.count == 2) {
            return "Balanced"
        }
        
        var x0,x1,x2,x3:Int
        
        if (arr.count % 2 == 0) {
            x0 = 0
            x1 = arr.count / 2 - 2
            x2 = arr.count / 2 + 1
            x3 = arr.count - 1
        } else {
            x0 = 0
            x1 = arr.count / 2 - 1
            x2 = arr.count / 2 + 1
            x3 = arr.count - 1
        }
        
        var leftArr = arr[x0...x1]
        var rightArr = arr[x2...x3]
        
        if leftArr.reduce(0, +) == rightArr.reduce(0, +) {
            return "Balanced"
        } else {
            return "Not Balanced"
        }
    }
    
    func balancedTests() {
        print("--- Testing: \(Self.self) \(#function) ---")
        XCTAssertEqual(balancedNumber(7), "Balanced")
        XCTAssertEqual(balancedNumber(959), "Balanced")
        XCTAssertEqual(balancedNumber(13), "Balanced")
        XCTAssertEqual(balancedNumber(56239814), "Balanced")
        XCTAssertEqual(balancedNumber(424), "Balanced")
        print("")
    }
    
    func notBalancedTests() {
        print("--- Testing: \(Self.self) \(#function) ---")
        XCTAssertEqual(balancedNumber(1024), "Not Balanced")
        XCTAssertEqual(balancedNumber(66545), "Not Balanced")
        XCTAssertEqual(balancedNumber(295591), "Not Balanced")
        XCTAssertEqual(balancedNumber(1230987), "Not Balanced")
        XCTAssertEqual(balancedNumber(432), "Not Balanced")
        print("")
    }
}

