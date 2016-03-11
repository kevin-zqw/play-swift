/*
//: Playground - noun: a place where people can play

import UIKit

// Swift 2 introduce new Error Handling
// ErrorType protocol

// Enum is well suited for Error type

// Error Type can be throwed, and can be catched by caller

enum VendingMachineError: ErrorType {
    case InvalidSelection
    case InsufficinetFunds(coinsNeeded: Int)
    case OutOfStock
}

// function must marked with throws to be able to throw a error
func buyStock() throws {
    print("before error")
    throw VendingMachineError.InsufficinetFunds(coinsNeeded: 5)
    print("after error")
}

// throws go before the return type
func canThrowErrors() throws -> Int {
    return 5
}

func cannotThrowErrors() -> Int {
    print("cannotThrowErrors")
    return 5
}

// Handle Errors
try buyStock()

func vend(itemNamed name: String) throws {
    guard !name.isEmpty else {
        throw VendingMachineError.InvalidSelection
    }
    
    print("name is ok")
}

try vend(itemNamed: "Hello")

// Handling Errors Using Do-Catch
do {
    try vend(itemNamed: "")
} catch VendingMachineError.InvalidSelection {
    print("catched")
}

// Converting Errors to Optional Values
func someThrowingFunction() throws -> Int {
    // ...
    return 5
}

// If throwing a error, x will be nil
let x = try? someThrowingFunction()

// the statement above is same as belows

let y: Int?
do {
    y = try someThrowingFunction()
} catch {
    y = nil
}

// Use try! to disable error propagation and wrap the call in a runtime assertion 
// that no error will be thrown. If an error actually is thrown, you'll get a runtime error.
let xx = try! someThrowingFunction()

// Specifying Cleanup Actions
// Use defer statement to execute a set of statements just before code execution leaves the current block of code. A defer statement defers execution until the current scope is exited. Deferred actions are executed in reverse order of how they are specified - that is, the code in the first defer statement
// executes after code in the second, and so on.
func processFile(filename: String) throws {
    if exists(filename) {
        let file = open(filename)
        defer {
            close(file)
        }

        while let line = try file.readline() {
            // work with the file
        }
    }
}

// You can use a defer statement even when no error handling code is involved.

*/