//
//  TestingHelper.swift
//  CodeWars
//
//  Created by Afir Thes on 18.12.2022.
//

import Foundation


func XCTAssertEqual<T: Equatable>(_ a: T, _ b:T) -> Void  {
    print("\(a) == \(b) -> \(a == b)")
}

class XCTMain {
    
    static var tests = [()->Void]()
    
    init(_ tests:[()->Void]) {
        XCTMain.tests.append(contentsOf: tests)
    }
    
    static func runAll() {
        for f in tests {
            f()
        }
    }
    
}
