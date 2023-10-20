//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

// https://leetcode.com/problems/flatten-nested-list-iterator/?envType=daily-question&envId=2023-10-20


class NestedInteger {
    // Return true if this NestedInteger holds a single integer, rather than a nested list.
    public func isInteger() -> Bool
    
    // Return the single integer that this NestedInteger holds, if it holds a single integer
    // The result is undefined if this NestedInteger holds a nested list
    public func getInteger() -> Int
    
    // Set this NestedInteger to hold a single integer.
    public func setInteger(value: Int)
    
    // Set this NestedInteger to hold a nested list and adds a nested integer to it.
    public func add(elem: NestedInteger)
    
    // Return the nested list that this NestedInteger holds, if it holds a nested list
    // The result is undefined if this NestedInteger holds a single integer
    public func getList() -> [NestedInteger]
}


class NestedIterator {
    
    private var list: [NestedIterator]
    
    init(_ nestedList: [NestedInteger]) {
        self.list = nestedList.reversed()
        
    }
    
    func next() -> Int {
        return list.removeLast().getList()
    }
    
    func hasNext() -> Bool {
        while !list.isEmpty {
            var last = list.removeLast()
            if last.isInteger() {
                list.append(last)
                return true
            } else {
                last.getList().reversed().forEach { list.append($0) }
            }
        }
    }
}
