//: [Previous](@previous)

import Foundation

// https://leetcode.com/problems/min-cost-climbing-stairs/description/?envType=daily-question&envId=2023-10-13


func minCostClimbingStairs(_ cost: [Int]) -> Int {
    guard !cost.isEmpty else {
        return 0
    }
    
    var len = cost.count
    var dp = [Int](repeating: .max, count: len + 1)
    (dp[0], dp[1]) = (cost[0], cost[1])
    
    for i in 2...len {
        dp[i] = min(dp[i-1], dp[i-2]) + (i != len ? cost[i] : 0)
    }
    return dp[len]
}

print(minCostClimbingStairs([1,100,1,1,1,100,1,1,100,1]))
