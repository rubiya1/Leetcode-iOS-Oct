//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

// https://leetcode.com/problems/sort-integers-by-the-number-of-1-bits/?envType=daily-question&envId=2023-10-30


func sortByBits(_ arr: [Int]) -> [Int] {
    return arr.sorted {
        let val = ($0.nonzeroBitCount, $1.nonzeroBitCount)
        return val.0 == val.1 ? $0 < $1 : val.0 < val.1
    }
}
