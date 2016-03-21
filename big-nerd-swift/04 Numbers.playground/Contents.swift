//: Playground - noun: a place where people can play

import Cocoa

print("The maximum Int value is \(Int.max).")
print("The minimum Int value is \(Int.min).")

print("The maximum Int32 value is \(Int32.max).")
print("The minimum Int32 value is \(Int32.min).")

print(Int8.max, Int16.max, Int32.max, Int64.max, Int.max)
print(UInt8.max, UInt16.max, UInt32.max, UInt64.max, UInt.max)

// Swift style is to prefer Int for all integer uses(including counts) unless an unsigned
// integer is required by the algorithm or code you are writing.

let numberOfPages: Int = 10
let numberOfChapters = 3 // Inferred Int by the compiler

// Declaring other integer types explicitly
let numberOfPages2: UInt = 40

// You can't declaring integer types with invalid values
// let firstBadValue: UInt = -1
// let secondBadValue: Int8 = 200

// Integer division always rounds toward 0.
print(10 / 3)
print(10 / -3)

print(11 % 3)       // 2
print(11 % -3)      // 2
print(-11 % 3)      // -2
print(-11 % -3)     // -2

// Overflow operators
let y: Int8 = 120
// Error
// let z = y + 10
let z = y &+ 10

// Other overflow operators
// &-, &*

// Substraction cannot overflow, but it can underflow.

// Only use overflow operators when you have no other choices

