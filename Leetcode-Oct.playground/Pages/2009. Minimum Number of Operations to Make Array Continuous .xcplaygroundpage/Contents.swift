//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

// https://leetcode.com/problems/minimum-number-of-operations-to-make-array-continuous/?envType=daily-question&envId=2023-10-10

/*
 Algorithm

 Set n = nums.length and the answer ans = n.
 
 Remove duplicates from nums and then sort it. We will call this new array newNums.
 
 Initialize j = 0 and iterate i over the indices of newNums:
 
 While newNums[j] is within our range (less than newNums[i] + n), increment j.
 
 Calculate count = j - i, the number of elements already in our range.
 
 Update ans with n - count if it is smaller.
 
 Return ans.
 
 */


// Time complexity: O(n⋅log⁡n)
// Space complexity: O(n)


func minOperations(_ nums: [Int]) -> Int {
    let uniqueNums = Array(Set(nums)).sorted()
    
    let n = uniqueNums.count
    
    var ans = 0, j = 0
    
    for i in 0..<n {
        while j < n && uniqueNums[j] - uniqueNums[i] < nums.count {
            j += 1
        }
        ans = max(ans, j-i)
    }
    
    return nums.count - ans
}

print(minOperations([1,2,3,5,6]))

