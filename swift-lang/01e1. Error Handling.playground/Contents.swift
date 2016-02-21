//: Playground - noun: a place where people can play

import UIKit

// Use Error Handling to respond to error conditions your program may encounter during execution.
// When a function encounters an error condition, it throws an error. That function's caller can then 
// catch the error and respond appropriately.

func canThrowAnError() throws {
    // this function may or may not throw an error
}

do {
    try canThrowAnError()
    // no error was thrown
//} catch Error.SomeError {
//    
//} catch Error.AnotherError {
//    
} catch {
    // an error was thrown
}

