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
    
    // Add
    public func add(_ nums: [Int]) -> Int {
        return nums.reduce(0, +)
    }
    
    public func add(lhs: Int, rhs: Int) -> Int {
        return self.add([lhs, rhs])
    }
    
    // Subtract
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
    
    // Multiply
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
    
    // Divide
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
}
