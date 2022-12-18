//
//  AlphabeticalAddition.swift
//  CodeWars
//
//  Created by Afir Thes on 19.12.2022.
//

import Foundation

/*
 Your task is to add up letters to one letter.

 The funleton will be given an Array<Character>, each one being a letter to add, and the function will return a Character.

 Notes:
 Letters will always be lowercase.
 Letters can overflow (see second to last example of the description)
 If no letters are given, the function should return 'z'
 */

class AlphabeticalAddition {

    func addLetters(_ letters: [Character]) -> Character {
        let charArr = Array("abcdefghijklmnopqrstuvwxyz")
        if letters.isEmpty {
            return Character("z")
        }
        var sum = 0
        for c in letters {
            sum += charArr.firstIndex(of: c)! + 1
        }
        return charArr[(sum - 1) % charArr.count]
    }

    func testBasic() {
        print("--- Testing: \(Self.self) \(#function) ---")
        XCTAssertEqual(addLetters(["a", "b", "c"]), "f")
        XCTAssertEqual(addLetters(["z"]), "z")
        XCTAssertEqual(addLetters(["a", "b"]), "c")
        XCTAssertEqual(addLetters(["c"]), "c")
        XCTAssertEqual(addLetters(["z", "a"]), "a")
        XCTAssertEqual(addLetters(["y", "c", "b"]), "d")
        XCTAssertEqual(addLetters([]), "z")
        print("")
    }
}
