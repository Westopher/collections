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


var counter = 0
let incrementCount = {
    counter += 1
}

func countingClosure() -> () -> Int {
    var counter = 0
    let incrementingCounter: () -> Int = {
        counter += 1
        return counter
    }
    return incrementingCounter
}

let counter1 = countingClosure()
let counter2 = countingClosure()

counter1()
counter1()
counter1()
counter1()


counter2()


//closures and collections

let names = ["Zeplin", "Banford", "Apple", "Cutford"]

names.sorted { a, b in
    a < b
}

var prices = [1.50, 10.00, 4.99, 2.30, 8.19]

let largePrices = prices.filter { price -> Bool in
    return price > 5
}

let salePrices = prices.map { price -> Double in
    return price * 0.9
}
print(salePrices)

let sum = prices.reduce(0) { result, price -> Double in
    return result + price
}

//to find the value of a dictionary where the key represents the price and the value represents the number of items in stock at that price
var stock = [1.50: 5, 10.00: 2, 4.99: 20, 2.30: 5, 8.19: 30]
let stockSum = stock.reduce(0) { result, pair -> Double in
    return result + (pair.key * Double(pair.value))
}

print(stockSum)

























