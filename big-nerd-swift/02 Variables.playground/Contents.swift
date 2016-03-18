//: Playground - noun: a place where people can play

import Cocoa

// Type inference
var numberOfStoplights = "Four"

// No implict type conversation will be made
// This will trigger a compile error
// numberOfStoplights += 2

// You must perform a explict type conversation
numberOfStoplights += String(4)

// Type annotation
var count: Int = 3

// Constants vs Variables
let myConstant = 4
var myVariable = 4

// Won't compile
//myConstant += 2

// It's OK
myVariable += 2

let numberOfItems: Int = 4
var population: Int
population = 5422
let townName: String = "Knowhere"

// String interpolation
let townDescription = "\(townName) has a population of \(population) and \(numberOfStoplights) stoplights."
print(townDescription)

