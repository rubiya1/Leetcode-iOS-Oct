//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//https://leetcode.com/problems/find-the-original-array-of-prefix-xor/solutions/4228464/swift-easy-to-understand-and-simple-solution/?envType=daily-question&envId=2023-10-31

func findArray(_ pref: [Int]) -> [Int] {
    var ans = [Int](repeating: 0, count: pref.count)
    ans[0] = pref[0]
    
    for i in 1..<pref.count {
        ans[i] = pref[i] ^ pref[i-1]
    }
    return ans
}
