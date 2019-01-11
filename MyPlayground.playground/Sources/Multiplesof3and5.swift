/**
 If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.
 
 Find the sum of all the multiples of 3 or 5 below 1000.
 **/

import Foundation

public struct Multiplesof3and5 {
    
    public init(){}
    
    public func allMultiplesBelowUnOptimised(number: Int)->Int{
        var threeFiveMultiples = [Int]()
        for i in 2..<number{
            if (i % 3 == 0 || i % 5 == 0) {
                threeFiveMultiples.append(i)
            }
        }
        let nonDuplicatedArray = Array(Set(threeFiveMultiples))
        let sum = nonDuplicatedArray.reduce(0,+)
        return sum
    }
    
    /* works on the principle of AP where summation of an AP is (2a+(n-1)d)*n/2 for 1,2,3,...,n its
     a=1,n=calculated,d=1 hence n*(n+1)/2 
    */

    func getSumOfNumbers(target: Int, n:Int)->Int{
        let redced:Int = target/n
        //return n*(redced*(redced+1))/2   //5*(2*3)
        return redced*(redced+1)/2 * n   //5*(2*3)
    }
    
    public func allMultiplesBelowOptimised(number: Int)->Int{
        let threeSummation = getSumOfNumbers(target: number-1, n: 3)
        let fiveSummation = getSumOfNumbers(target: number-5, n: 5)
        let fifteenSummation = getSumOfNumbers(target: number-10, n: 15)
        return threeSummation+fiveSummation-fifteenSummation
    }
}

