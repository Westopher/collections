//: Playground - noun: a place where people can play

import UIKit

//array, ordered list of values. Can only store values of the same type.

var evenNumbers: [Int] = [2, 4, 6, 8]

let evenNumbers2: Array<Int> = [12, 14, 16, 18]

evenNumbers.append(10)

evenNumbers += [20, 22, 26]

print(evenNumbers.isEmpty)

print(evenNumbers.count)

//because this is an optional you need to check to see if it's nil or not
if let goob = evenNumbers.first {
print(goob)
} else {
    print("emp")
}


