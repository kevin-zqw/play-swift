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

func buyStock() throws {
    throw VendingMachineError.InsufficinetFunds(coinsNeeded: 5)
}

try buyStock()

// throws go before the return type
func canThrowErrors() throws -> Int {
    return 5;
}
