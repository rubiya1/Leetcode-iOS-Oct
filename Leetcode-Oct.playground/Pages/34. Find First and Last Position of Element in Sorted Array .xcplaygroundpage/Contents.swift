//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)

// https://leetcode.com/problems/find-first-and-last-position-of-element-in-sorted-array/description/

func searchRange(_ nums: [Int], _ target: Int) -> [Int] {
    var arr = [-1,-1]
      guard !nums.isEmpty else {return arr }
      var lhs = 0, rhs = nums.count - 1


      while lhs < rhs {
          let mid = lhs + (rhs - lhs) / 2
          nums[mid] < target ? (lhs = mid + 1) : (rhs = mid)
      }

      guard nums[lhs] == target else {return arr }
      arr[0] = lhs
      rhs = nums.count - 1

      while lhs < rhs {
          let mid = lhs + (rhs - lhs) / 2 + 1
          nums[mid] > target ? (rhs = mid - 1) : (lhs = mid)
      }
      arr[1] = lhs
      return arr
    
}
