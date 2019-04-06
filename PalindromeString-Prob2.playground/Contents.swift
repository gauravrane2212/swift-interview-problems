/*
Challenge 2: Is a string a palindrome?
Difficulty: Easy
Write a function that accepts a String as its only parameter, and returns true
if the string reads the same when reversed, ignoring case.

Clarification:
"rotator" => true
"abcde" => false
"ABCba" => true

Thought process
1. Two pointers and compare them one by one keep incrementing them towards the
center
2. Reverse the string and compare the original and the reversed string. Should
be equal
*/
import UIKit

func checkIfPalindrome(_ str: String) -> Bool {
	let inputChars = str.lowercased().map{$0}
	let reversedChars: [Character] = inputChars.reversed()
	for index in 0 ..< reversedChars.count {
		if inputChars[index] == reversedChars[index] {
			continue
		} else {
			return false
		}
	}
	return true
}

assert(checkIfPalindrome("rotator") == true, "Palindrome check failed")
assert(checkIfPalindrome("Rats live on no evil star") == true, "Palindrome check failed")
assert(checkIfPalindrome("Never odd or even") == false, "Palindrome check failed")
assert(checkIfPalindrome("Hello, world") == false, "Palindrome check failed")

// Easy solution
func solution(_ str: String) -> Bool {
	let lowercased = str.lowercased()
	return String(lowercased.reversed()) == str
}
