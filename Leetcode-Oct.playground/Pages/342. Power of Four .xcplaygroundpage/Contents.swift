//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

// https://leetcode.com/problems/power-of-four/?envType=daily-question&envId=2023-10-23

func isPowerOfFour(_ n: Int) -> Bool {
    if n == 0 { return false}
    return ((n == 1) || (n%4 == 0 && isPowerOfFour(n/4)))
}
