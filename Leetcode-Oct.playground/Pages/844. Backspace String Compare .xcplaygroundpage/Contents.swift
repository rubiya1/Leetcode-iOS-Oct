//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

// https://leetcode.com/problems/backspace-string-compare/?envType=daily-question&envId=2023-10-19


func backspaceCompare(_ S: String, _ T: String) -> Bool {
    
    guard !S.isEmpty || !T.isEmpty else {
        return false
    }
    return removeBack(S) == removeBack(T)
}


func removeBack( _ s: String) -> [Character] {
    var stack = [Character]()
    for currentChar in s {
        if currentChar != "#" { stack.append(currentChar) }
        else if !stack.isEmpty { stack.removeLast() }
    }
    return stack
}

print(backspaceCompare("a#c", "b"))
