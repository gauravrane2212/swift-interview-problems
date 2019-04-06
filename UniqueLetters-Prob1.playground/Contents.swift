/*
Challenge 1: Are the letters unique?
Difficulty: Easy
Write a function that accepts a String as its only parameter, and returns true if the string has
only unique letters, taking letter case into account.

Clarification:
abc => true
abB => true
abb => false
abcded => false
*/



import UIKit

func checkIfUniqueLetters(in str: String) -> Bool {
	var dictOfLetters: [Character : Bool] = [:]
	var hasUniqueLetters = true

	for char in str {
		if dictOfLetters[char] ?? false {
			hasUniqueLetters = false
		} else {
			dictOfLetters[char] = true
		}
	}
	return hasUniqueLetters
}

assert(checkIfUniqueLetters(in: "No duplicates") == true, "Challenge 1 failed")
assert(checkIfUniqueLetters(in: "abcdefghijklmnopqrstuvwxyz") == true, "Challenge 1 failed")
assert(checkIfUniqueLetters(in: "AaBbCc") == true, "Challenge 1 failed")
assert(checkIfUniqueLetters(in: "Hello, world") == false, "Challenge 1 failed")

// Other solutions
func challenge1a(input: String) -> Bool {
	var existingChars = [Character]()

	for char in input {
		if existingChars.contains(char) {
			return false
		}
		existingChars.append(char)
	}
	return true
}

func challenge1b(input: String) -> Bool {
	return Set(input).count == input.count
}
