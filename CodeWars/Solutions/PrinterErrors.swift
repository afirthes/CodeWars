//
//  PrinterErrors.swift
//  CodeWars
//
//  Created by Afir Thes on 19.12.2022.
//

import Foundation

class PrinterErrors {

    func printerError(_ s: String) -> String {
        let charArr = Array("abcdefghijklm")
        var errCount = 0
        for c in s {
            if !charArr.contains(c) {
                errCount += 1
            }
        }
        return "\(errCount)/\(s.count)"
    }

    func testBasic() {
        print("--- Testing: \(Self.self) \(#function) ---")
        XCTAssertEqual(printerError("aaabbbbhaijjjm"), "0/14")
        XCTAssertEqual(printerError("aaaxbbbbyyhwawiwjjjwwm"), "8/22")
        print("")
    }
}
