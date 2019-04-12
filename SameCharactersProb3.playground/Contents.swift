import UIKit

/*
Challenge 3: Do two strings contain the same characters?
Difficulty: Easy

Write a function that accepts two String parameters, and returns true if they contain the same
characters in any order taking into account letter case.

Clarification
Sample input and output
• The strings “abca” and “abca” should return true.
• The strings “abc” and “cba” should return true.
• The strings “ a1 b2 ” and “ b1 a2 ” should return true.
• The strings “abc” and “abca” should return false.
• The strings “abc” and “Abc” should return false.
• The strings “abc” and “cbAa” should return false.
• The strings “abcc” and “abca” should return false.

*/

func checkIfSameChars(_ a: String, _ b: String) -> Bool {
	var checker: Bool = true
	if a.count != b.count {
		checker = false
	} else {
		var tempB = b
		for letter in a {
			if let i = tempB.firstIndex(of: letter) {
				tempB.remove(at: i)
			} else {
				checker = false
				break
			}
		}
	}
	return checker
}

assert(checkIfSameChars("abca", "abca") == true, "Chars are not same")
assert(checkIfSameChars("abc", "cba") == true, "Chars are not same")
assert(checkIfSameChars(" a1 b2 ", " b1 a2 ") == true, "Chars are not same")
assert(checkIfSameChars("abc", "abca") == false, "Chars are same")
assert(checkIfSameChars("abc", "Abc") == false, "Chars are same")
assert(checkIfSameChars("abc", "cbAa") == false, "Chars are same")
assert(checkIfSameChars("abcc", "abca") == false, "Chars are same")

// Recommended solution

func challenge3a(string1: String, string2: String) -> Bool {
	var checkString = string2
	for letter in string1 {
		if let index = checkString.index(of: letter) {
			checkString.remove(at: index)
		} else {
			return false
		}
	}
	return checkString.count == 0
}

// Recommend solution 2
func challenge3b(string1: String, string2: String) -> Bool {
	return string1.sorted() == string2.sorted()
}
