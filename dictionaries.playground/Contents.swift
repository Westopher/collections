//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


// unordered set of data with key, value pairs.

//keys must be unique, but different keys can point to the same value
//all the keys must be of same type / same with values

var namesAndScores: [String: Int] = ["Anna": 2, "Brian": 2, "Craig": 8, "Donna": 6]
print(namesAndScores)

print(namesAndScores["Anna"])

namesAndScores.isEmpty
namesAndScores.count

namesAndScores["Greg"] = 10
namesAndScores["Anna"] = 4

namesAndScores["Anna"]

for (player, score) in namesAndScores {
    print("\(player) is \(score)")
}

//to access just the keys

for (player) in namesAndScores.keys {
    print("\(player)")
}
