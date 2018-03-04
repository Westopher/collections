//: Playground - noun: a place where people can play

import UIKit

//closures

var multiplyClosure: (Int, Int) -> Int

multiplyClosure = { a, b  in
    return a * b
}

let result = multiplyClosure(4, 2)

//functions take closures as a parameter

func operateOnNumbers(_ a: Int, _ b: Int,
                      operation: (Int, Int) -> Int) -> Int {
    let result = operation(a, b)
    print(result)
    return result
}
//take these parameters and do this function to it
operateOnNumbers(2, 4, operation: multiplyClosure)


var addClosure: (Int, Int) -> Int = { a, b  in
    return a + b
}

operateOnNumbers(2, 4, operation: addClosure)

//add closure inline
operateOnNumbers(2, 4, operation: { $0 / $1 })


