import UIKit

var greeting = "Hello, playground"
// https://leetcode.com/problems/number-of-flowers-in-full-bloom/


func fullBloomFlowers(_ flowers: [[Int]], _ people: [Int]) -> [Int] {
    var start = [Int]()
    var end = [Int] ()
    
    flowers.forEach {
        start.append($0[0])
        end.append($0[1] + 1)
    }
    
    start.sort()
    end.sort()
    
    
    func binarySearch(_ nums: [Int], _ target: Int) -> Int {
        var l = 0
        var r = nums.count
        while l < r {
            let mid = (l + r) / 2
            if target < nums[mid] {
                r = mid
            } else {
                l = mid + 1
            }
        }
        return l
    }
    

    return people.map {
        let flowersStartedToBloom = binarySearch(start, $0)
        let flowersEndedToBloom = binarySearch(end, $0)
        return flowersStartedToBloom - flowersEndedToBloom
    }
}


print(fullBloomFlowers([[1,6],[3,7],[9,12],[4,13]],[2,3,7,11]))
