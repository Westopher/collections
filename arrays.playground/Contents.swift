//: Playground - noun: a place where people can play

import UIKit

//array, ordered list of values. Can only store values of the same type.

var evenNumbers: [Int] = [2, 4, 6, 8, 0]

let evenNumbers2: Array<Int> = [12, 14, 16, 18]

evenNumbers.append(10)

evenNumbers += [20, 22, 26]

print(evenNumbers.isEmpty)

print(evenNumbers.count)

//because this is an optional you need to check to see if it's nil or not
//evenNumbers = []

if let goob = evenNumbers.first {
print(goob)
} else {
    print("emp")
}

//print the smallest # in the array
if let min = evenNumbers.min() {
    print(min)
}

var firstElement = evenNumbers[0]
print("first element is \(firstElement)")

let firstThree = evenNumbers[0...2]
print(firstThree)

evenNumbers.contains(3)

evenNumbers.insert(62, at: 4)
print(evenNumbers)

let remove = evenNumbers.remove(at: 3)
print(evenNumbers)

evenNumbers.insert(remove, at: evenNumbers.count)
print(evenNumbers)


evenNumbers.swapAt(1, 2)
print(evenNumbers)


for x in evenNumbers {
    
    print(x)
    
}

for (bleg, evenNumber) in evenNumbers.enumerated() {
    print("bleg[\(bleg)]) = \(evenNumber)")
}









