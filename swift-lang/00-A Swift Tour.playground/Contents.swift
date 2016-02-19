//: Playground - noun: a place where people can play

import UIKit

print("Hello swift!")

let myConstant = 50
// myConstant = 20

var myVariable = 10
myVariable = 50

let implicitInteger = 70
let implicitDouble = 70.1
let explicitDouble: Double = 20.2
let myFloat: Float = 4

// Values are never implicitly converted to another type
let label = "The width is "
let width = 94
// Compile error
// let widthLabel = label + width
let widthLabel = label + String(width)

// add values to String
let apples = 3
let oranges = 5
let appleSummary = "I have \(apples) apples."
let orangeSummary = "I have \(oranges) oranges."
let fruitSummary = "I have \(apples + oranges) pieces of fruit."

let greetings = "Hello Kevin, your score is \(49.9 + 49.9)"

var testArray = [1, 2, 3, 4, "hello"]
testArray[1] = "new value"
testArray

let inmutableArray = [1, 2, 3, 4, 5, ]
// You can't change elements of the array
//inmutableArray[0] = 0
// You can't assign a new array
//inmutableArray = testArray

var httpErrors = [
    "200": "OK",
    "404": "Not Found",
    "500": "Internal Error",
]
httpErrors["501"] = "another server error"
httpErrors

let inmutableDict = [
    1: "1",
    2: "2",
    3: "3",
    "hello": "world"
]
//inmutableDict[1] = "0"
//inmutableDict = httpErrors

// Use initializer syntax to create empty array and dictonary
let emptyArray = [Int]()
let emptyDictionary = [Int: Int]()

let emptyArray1: [Int] = []
let emptyDictionary1: [Int: String] = [:]

// Control Flow, parentheses are optional, braces are required
let a = 2
if a == 3 {
    print("a equals 3")
}

let individualScores = [75, 50, 100, 66]
var teamScore = 0
for score in individualScores {
    if score > 50 {
        teamScore += 3
    } else {
        teamScore += 1
    }
}
print(teamScore)

// optional binding
let optionalString: String? = "hello"
var optionalName: String? = nil
var greeting = "Hello!"
if let name = optionalName {
    greeting = "Hello, \(name)"
}
print(greeting)

// Use ?? operator to provide a default value for optional
let nickName: String? = "Nick" // nil
let fullName: String = "Kevin Zhang"
let informalGreeting = "Hi \(nickName ?? fullName)"

// Switches are powerful
let vegetable = "red pepper"
switch vegetable {
case "celery":
    print("Add some raisins and make ants on a log.")
    // we don't need a break here
case "cucumber", "watercress":
    print("That would make a good tea sandwich.")
case let x where x.hasSuffix("pepper"):
    print("Is it a spicy \(x)?")
default:
    // switch case must contains all possible values, or you must provide a default
    print("Everything tastes good in soup.")
}

// for in
let interestingNumbers = [
    "Prime": [2, 3, 5, 7, 11, 13],
    "Fibonacci": [1, 1, 2, 3, 5, 8],
    "Square": [1, 4, 9, 16, 25],
]
var largest = 0
var largestKind = ""
for (kind, numbers) in interestingNumbers {
    for number in numbers {
        if number > largest {
            largest = number
            largestKind = kind
        }
    }
}
print("largest number: \(largest), with kind: \(largestKind)")

var firstForLoop = 0
for i in 0...4 { // use ..< to omits the upper value
    firstForLoop += i
}
print(firstForLoop)

// while
var n = 2
while n < 10000 {
    n *= 2
}
print(n)

var m = 2
repeat {
    m *= 2
} while m < 10000
print(m)

// Functions
func greet(name: String, day: String) -> String {
    return "Hello \(name), today is \(day)."
}
greet("Kevin", day: "Monday")

// Use tuple to return multiple values from function
func calculateStatistics(scores: [Int]) -> (min: Int, max: Int, sum: Int) {
    var min = scores[0]
    var max = scores[0]
    var sum = 0
    
    for score in scores {
        if score > max {
            max = score
        } else if score < min {
            min = score
        }
        
        sum += score
    }
    
    return (min, max, sum)
}
let statistics = calculateStatistics([5, 6, 7, 1, 10, 100, 9999])
print(statistics)
// referred elements of tuple by name or index
print(statistics.max)
print(statistics.1)

// variable arguments will be array in function
func sumOf(numbers: Int...) -> Int {
    var sum = 0
    for number in numbers {
        sum += number
    }
    
    return sum
}
sumOf()
sumOf(1, 2, 3, 4, 5)

// Nested function have access to variables that in the outer funciton
// Use nested functions to organize long or complex function
func returnFifteen() -> Int {
    var y = 10
    func add() {
        y += 5
    }
    
    add()
    return y
}
returnFifteen()

// Function are a first-class type, this means that a function 
// can return another function as its value
func makeIncrementer() -> ((Int) -> Int) {
    func addOne(number: Int) -> Int {
        return number + 1
    }
    
    return addOne
}

var incrementer = makeIncrementer()
incrementer(99)

// A function can take another function as one of its arguments
func hasAnyMatches(list: [Int], condition: (Int) -> Bool) -> Bool {
    for item in list {
        if condition(item) {
            return true
        }
    }
    
    return false
}

func lessThanTen(number: Int) -> Bool {
    return number < 10
}

var numbers = [20, 19, 7, 12]
hasAnyMatches(numbers, condition: lessThanTen)

// Closures can access variables and functions in current scope,
// Write closure without a name by surrounding code with {}, 
// Use "in" to separate the arguments and return type from the body.
let mapResult = numbers.map({
    (number: Int) -> Int in
    let result = 3 * number
    return result
})
print(mapResult)

let zeroOdd = numbers.map({
    (number: Int) -> Int in
    return (number % 2 != 0) ? 0 : number
})
print(zeroOdd)

// More concisely closures
let mappedNumbers = numbers.map({
    number in
    3 * number
})

let sortedNumbers = numbers.sort {
    $0 > $1
}

// Objects and Classes
class Shape {
    var numberOfSides = 0
    var name: String
    
    let a = 100
    
    init(name: String) {
        self.name = name
    }
    
    deinit {
        print("deinit shape")
    }
    
    func simpleDescription() -> String {
        return "A shape with \(numberOfSides) sides."
    }
    
    func plusA(number: Int) -> Int {
        return number + a
    }
}

var shape = Shape(name: "my shape")
shape.numberOfSides = 7
var shapeDescription = shape.simpleDescription()
var plusResult = shape.plusA(50)

class Square: Shape {
    var sideLength: Double
    
    init(sideLength: Double, name: String) {
        self.sideLength = sideLength
        super.init(name: name)
        numberOfSides = 4
    }
    
    func area() -> Double {
        return sideLength * sideLength
    }
    
    override func simpleDescription() -> String {
        return "A square with sides of length \(sideLength)"
    }
}
let testSquare = Square(sideLength: 5.2, name: "my square")
testSquare.area()
testSquare.simpleDescription()

class Circle: Shape {
    var radius: Double
    let pi = 3.14159
    
    init(radius: Double, name: String) {
        self.radius = radius
        super.init(name: name)
    }
    
    func area() -> Double {
        return pi * radius * radius
    }
    
    override func simpleDescription() -> String {
        return "A Circle with radius \(radius)"
    }
}

class EquilateralTriangle: Shape {
    var sideLength: Double = 0
    
    init(sideLength: Double, name: String) {
        self.sideLength = sideLength
        super.init(name: name)
        numberOfSides = 3
    }
    
    var perimeter: Double {
        get {
            return 3.0 * sideLength
        }
        set {
            sideLength = newValue / 3.0
        }
    }
    
    override func simpleDescription() -> String {
        return "An equilateral triangle with sides of length \(sideLength)"
    }
}

// Enumerations
enum Rank: Int {
    case Ace = 1
    case Two, Three, Four, Five, Six, Seven, Eight, Nine, Ten
    case Jack, Queen, King
    
    func simpleDescription() -> String {
        switch self {
        case .Ace:
            return "ace"
        case .Jack:
            return "jack"
        case .Queen:
            return "queen"
        case .King:
            return "king"
        default:
            return String(self.rawValue)
        }
    }
    
    func equals(rank: Rank) -> Bool {
        return self.rawValue == rank.rawValue
    }
}

let ace = Rank.Ace
let aceRawValue = ace.rawValue
ace.equals(Rank.Queen)

let optionalRank = Rank(rawValue: 13)
if let rank = optionalRank {
    let description = rank.simpleDescription()
}

enum Suit {
    case Spades, Hearts, Diamonds, Clubs
    
    func simpleDescription() -> String {
        switch self {
        case .Spades:
            return "Spades"
        case .Hearts:
            return "Hearts"
        case .Diamonds:
            return "Diamonds"
        case .Clubs:
            return "Clubs"
        }
    }
}

struct Card {
    var rank: Rank
    var suit: Suit
    
    func simpleDescription() -> String {
        return "The \(rank.simpleDescription()) of \(suit.simpleDescription())"
    }
}

let threeOfSpades = Card(rank: .Three, suit: .Spades)
threeOfSpades.simpleDescription()

enum ServerResponse {
    case Result(String, String)
    case Failure(String)
}

let success = ServerResponse.Result("6 am", "8:09 pm")
let failure = ServerResponse.Failure("out of cheese.")

switch success {
case let .Result(sunrise, sunset):
    print("Sunrise is at \(sunrise) and sunset is at \(sunset)")
case let .Failure(message):
    print("Failure... \(message)")
}

// Protocols
protocol MyProtocol {
    var simpleDescription: String { get }
    mutating func adjust()
}

class SimpleClass: MyProtocol {
    var simpleDescription: String = "A very simple class."
    
    var anotherProperty: Int = 69105
    
    func adjust() {
        simpleDescription += " Now 100% adjusted."
    }
}

// Extensions
extension Double {
    var absoluteValue: Double {
        if (self < 0) {
            return -self
        } else {
            return self
        }
    }
}

let double5 = -5.0
double5.absoluteValue

// Error handling
enum PrinterError: ErrorType {
    case OutOfPaper
    case NoToner
    case OnFire
}

func sendToPrinter(printerName: String) throws -> String {
    if printerName == "Never Has Toner" {
        throw PrinterError.NoToner
    }
    
    return "Job sent"
}

do {
    let printerResonpse = try sendToPrinter("Bi Sheng")
    print(printerResonpse)
} catch PrinterError.OnFire {
    print("on fire")
} catch let printerError as PrinterError {
    print("Printer error: \(printerError).")
} catch { // error is the default name
    print(error)
}

// use try? to convert the result to an optoinal and discard the error
let printerFailure = try? sendToPrinter("Never Has Toner")

// use defer to write a block of code that is always executed before a function retures
var teaKettleHeating = false
func morningRoutine() throws {
    teaKettleHeating = true
    
    defer {
        teaKettleHeating = false
    }
    
    let newspaper = try sendToPrinter("Lanston")
    print(newspaper)
}

// Generics
func repeatItem<Item>(item: Item, numberOfTimes: Int) -> [Item] {
    var result = [Item]()
    for _ in 0..<numberOfTimes {
        result.append(item)
    }
    return result
}

repeatItem("1", numberOfTimes: 5)

// generic can be used to functions, methods, as well as classes, enumerations, and structures
enum OptionalValue<Wrapped> {
    case None
    case Some(Wrapped)
}
var possibleInteger: OptionalValue<Int> = .None
possibleInteger = .Some(50)

// Use where after the type name to specify a list of requirements
func anyCommonElements <T: SequenceType, U: SequenceType where T.Generator.Element: Equatable, T.Generator.Element == U.Generator.Element> (lhs: T, _ rhs: U) -> Bool {
    for lhsItem in lhs {
        for rhsItem in rhs {
            if lhsItem == rhsItem {
                return true
            }
        }
    }
    
    return false
}

anyCommonElements([1, 2, 3], [3])
