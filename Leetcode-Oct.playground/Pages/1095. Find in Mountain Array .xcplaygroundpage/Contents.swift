//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)

// https://leetcode.com/problems/find-in-mountain-array/

func findInMountainArray(_ target: Int, _ mountainArr: [Int]) -> Int {
    var l = 1, r = mountainArr.count - 2
    var peak = 0
    
    // find the peak
    while  l <= r {
        let m = (l + r ) / 2
        let (left,mid,right) = (mountainArr[m-1], mountainArr[m],mountainArr[m+1])
        if left < mid && mid < right { l = m + 1 }
        else if left > mid  && mid > right { r = m - 1 }
        else { peak = m; break }
    }
    
    // Search Left portion
    l = 0; r = peak
    while l <= r {
        let m = (l + r) / 2
        let val = mountainArr[m]
        if val > target { r = m - 1}
        else if val < target { l = m + 1}
        else { return m }
    }
    
    // Search right portion
    l = peak; r = mountainArr.count - 1
    print("peak is \(peak)")
    while l <= r {
        let m = (l + r) / 2
        let val = mountainArr[m]
        if val > target { l = m + 1 }
        else if val < target { r = m - 1}
        else { return m }
    }
    return -1
}


print(findInMountainArray(1, [0,1,5,3,0]))

