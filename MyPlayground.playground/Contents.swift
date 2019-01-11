

import UIKit
import PlaygroundSupport


public func largestPrime(n: Int)->Int{
    var newN = n
    var largestNumber = 0

    var counter = 2
    while counter*counter <= newN{
        if newN%counter == 0{
            newN = newN/counter
            largestNumber = counter
        }else{
            counter = counter+1
        }
    }

    if newN > largestNumber{
        largestNumber = newN
    }

    return largestNumber
}



//let problem = Multiplesof3and5()
//print(problem.allMultiplesBelowUnOptimised(number: 10))
//print(problem.allMultiplesBelowOptimised(number: 10))
//print("abc")

//let problem = EvenFibonaccinumbers()
//print(problem.evenFibonacciNumberSumTill(100))

print(largestPrime(n: 600851475143))


