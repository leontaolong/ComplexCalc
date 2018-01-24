//
//  Calculator.swift
//  ComplexCalc
//
//  Created by Ted Neward on 10/4/17.
//  Copyright © 2017 Neward & Associates. All rights reserved.
//

import Foundation

// All your work will go in here
class Calculator {
    
    /* Add */
    public func add(_ nums: [Int]) -> Int {
        return nums.reduce(0, +)
    }
    
    public func add(lhs: Int, rhs: Int) -> Int {
        return self.add([lhs, rhs])
    }
    
    // (x,y) pair addition
    public func add(lhs: (Int, Int), rhs: (Int, Int)) -> (Int, Int) {
        return (lhs.0 + rhs.0, lhs.1 + rhs.1)
    }
    
    // ["x": x, "y": y] dictionary addition
    public func add(lhs: [String: Int], rhs: [String: Int]) -> [String: Int] {
        var result = ["x": 0, "y": 0]
        result["x"] = lhs["x"]! + rhs["x"]!
        result["y"] = lhs["y"]! + rhs["y"]!
        return result;
    }
    
    /* Subtract */
    public func subtract(_ nums: [Int]) -> Int {
        var result = nums[0]
        for i in 1..<nums.count {
            result = result - nums[i]
        }
        return result
    }
    
    public func subtract(lhs: Int, rhs: Int) -> Int {
        return self.subtract([lhs, rhs])
    }
    
    // (x,y) pair subtraction
    public func subtract(lhs: (Int, Int), rhs: (Int, Int)) -> (Int, Int) {
        return (lhs.0 - rhs.0, lhs.1 - rhs.1);
    }
    
    // ["x": x, "y": y] dictionary subtraction
    public func subtract(lhs: [String: Int], rhs: [String: Int]) -> [String: Int] {
        var result = ["x": 0, "y": 0]
        result["x"] = lhs["x"]! - rhs["x"]!
        result["y"] = lhs["y"]! - rhs["y"]!
        return result;
    }
    
    /* Multiply */
    public func multiply(_ nums: [Int]) -> Int {
        var result = 1
        for num in nums {
            result *= num
        }
        return result;
    }
    
    public func multiply(lhs: Int, rhs: Int) -> Int {
        return self.multiply([lhs, rhs])
    }
    
    /* Divide */
    public func divide(_ nums: [Int]) -> Int {
        var result = nums[0]
        for i in 1..<nums.count {
            result = result / nums[i]
        }
        return result
    }
    
    public func divide(lhs: Int, rhs: Int) -> Int {
        return self.divide([lhs, rhs])
    }
    
    /* MathOp */
    public func mathOp(lhs: Int, rhs: Int, op: (Int, Int) -> Int) -> Int {
        return op(lhs, rhs)
    }
    
    public func mathOp(args: [Int], beg: Int, op: (Int, Int) -> Int) -> Int {
        var result = beg
        for num in args {
            result = op(num, result)
        }
        return result;
    }
    
    /* Count */
    public func count(_ nums: [Int]) -> Int {
        return nums.count
    }
    
    /* Avg */
    public func avg(_ nums: [Int]) -> Int {
        return self.add(nums) / nums.count
    }
}
