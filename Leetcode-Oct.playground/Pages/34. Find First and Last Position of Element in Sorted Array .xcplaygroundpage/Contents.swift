//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

// https://leetcode.com/problems/find-first-and-last-position-of-element-in-sorted-array/description/



/* Time Complexity: O(logN) considering there are n elements in the array.
 This is because binary search takes logarithmic time to scan an array of N elements.
 Why? Because at each step we discard half of the array we are scanning and hence, we're done after a logarithmic number of steps.
 We simply perform binary search twice in this case.

Space Complexity: O(1) since we only use space for a few variables and our result array, all of which require constant space. */

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
