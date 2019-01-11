import Foundation

public struct EvenFibonaccinumbers{
    public init(){}
    
    public func evenFibonacciNumberSumTill(_ n:Int)->Int{
        var fibs = [1,1]
        var evenValuedSum = 0
        var i = 2
        while (fibs[i-1]+fibs[i-2])<=n {
            fibs.append(fibs[i-1]+fibs[i-2])
            i += 1
            evenValuedSum = fibs.filter{$0%2 == 0}.reduce(0,+)
        }
        return evenValuedSum
    }
}
