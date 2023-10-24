//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)

public class TreeNode {
    public var val: Int
    public var left: TreeNode?
    public var right: TreeNode?
    public init() { self.val = 0; self.left = nil; self.right = nil; }
    public init(_ val: Int) { self.val = val; self.left = nil; self.right = nil; }
    public init(_ val: Int, _ left: TreeNode?, _ right: TreeNode?) {
        self.val = val
        self.left = left
        self.right = right
    }
}

func largestValues(_ root: TreeNode?) -> [Int] {
    var res = [Int]()
    func dfs(_ node: TreeNode?, _ depth: Int) {
        guard let node = node else { return }
        
        if depth < res.count {
            res[depth] = max(res[depth], node.val)
        } else {
            res.append(node.val)
        }
        dfs(node.left, depth + 1)
        dfs(node.right, depth + 1)
    }
    dfs(root, 0)
    return res
}


