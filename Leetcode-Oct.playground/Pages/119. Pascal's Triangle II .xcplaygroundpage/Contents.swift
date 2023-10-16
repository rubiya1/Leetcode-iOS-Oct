//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

// https://leetcode.com/problems/pascals-triangle-ii/?envType=daily-question&envId=2023-10-16

func getRow(_ rowIndex: Int) -> [Int] {
    if rowIndex == 0 { return [1] }
    var row = [Int](repeatElement(1, count: rowIndex+1))
    for i in 1...rowIndex {
        row[i] = row[i - 1] * (rowIndex-i+1)/i
    }
    return row
}
