//
//  Challenge.swift
//  CodeChallenge
//
//  Created by Aryan on 10/21/15.
//  Copyright © 2015 iosdevelopers. All rights reserved.
//

import Foundation

class ArryaxtTwoSome: TwoSomeTests {
    
    func testTwoSum() {
        measureBlock { self.evaluateResult(self.aryaxtTwoSum) }
    }
    
    // This is the worst and slowest solution to this problem O(n^2), let's try to improve
    func aryaxtTwoSum(numbers: [Int], targetNumber: Int) -> (Int, Int)? {
        for i in 0..<numbers.count-1 {
            for j in i+1..<numbers.count {
                if numbers[i] + numbers[j] == targetNumber {
                    return (i+1, j+1)
                }
            }
        }
        
        return nil
    }
    
}
