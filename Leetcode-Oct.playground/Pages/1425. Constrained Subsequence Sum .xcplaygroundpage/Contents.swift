//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

// https://leetcode.com/problems/constrained-subsequence-sum/?envType=daily-question&envId=2023-10-21


func constrainedSubsetSum(_ nums: [Int], _ k: Int) -> Int {
    var res = nums[0]
    var deque = [(index: Int, sum: Int)]()
    
    for i in 0..< nums.count {
        if let first = deque.first, i - first.index > k {
            deque.removeFirst()
        }
        var current = nums[i] + (deque.first?.sum ?? 0)
        while let last = deque.last, last.sum <= current {
            deque.removeLast()
        }
        if current > 0 {deque.append((i, current))}
        res = max(res, current)
    }
    
    return res
    
}

