//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

// https://leetcode.com/problems/maximum-score-of-a-good-subarray/description/?envType=daily-question&envId=2023-10-22


func maximumScore(_ nums: [Int], _ k: Int) -> Int {
    var l = k, r = k
    var curre_min = nums[k], res = nums[k]
    let count = nums.count - 1
          
    while l > 0 || r < count {
        let left =  l > 0 ? nums[l - 1] : 0
        let right = r < count ? nums[r + 1]  : 0
        if left > right { l -= 1; curre_min = min(curre_min, left)}
        else { r += 1; curre_min = min(curre_min, right) }
        res = max(res, curre_min * (r - l + 1))
      }
      return res
}

print(maximumScore([1,4,3,7,4,5],3))
