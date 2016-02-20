// ------------------------------------------------------------------------------------------------
// Things to know:
//
// * Tuples are groups of values combined into a single, compound value
// ------------------------------------------------------------------------------------------------

// Defining a Tuple - use parenthesis around the comma-delimited list of values
//
// This Tuple doesn't specify types, so it relies on inference
let httpError404 = (404, "Not found")

// We can also specify the type in order to avoid inferrence
let someOtherTuple = (Double(100), Bool(false))

// Decomposing typles looks like this
let (statusCode, statusMessage) = httpError404
statusCode
statusMessage

// We can also decompose into variables instead of constants, but you probably figured that out
var (varStatusCode, varStatusMessage) = httpError404
varStatusCode
varStatusMessage

// You can also access them with the dot operator followed by their index:
httpError404.0
httpError404.1

// Alternatively, you can name the elements of a Tuple
let namedTuple = (statusCode: 404, message: "Not found")

// When you name the elements you effectively assign names to their indices, so the dot operator
// works with names or integers:
namedTuple.statusCode == namedTuple.0
namedTuple.message == namedTuple.1

// Tuples group multiple values into a single compound value
// Values can be of any type and do not have to be of the same type as each other
// Tuples is very useful when function need return multiple values

let http404ErrorAgain = (404, "Not Found")
let http500Error = (code: 500, message: "Server Error")
http500Error.0
http500Error.1
http500Error.code
http500Error.message

let (code, message) = http404ErrorAgain
print(code, message)

// use _ to ignore values you don't need
let (code1, _) = http500Error

// Perfer name Tuple values, and avoid use index to refer tuple

// func return multiple values
func getMinMax(list: [Int]) -> (Int, Int) {
    var min = 0
    var max = 0
    
    for item in list {
        if item < min {
            min = item
        }
        
        if item > max {
            max = item
        }
    }
    
    return (min: min, max: max)
}

getMinMax([23, 1, 87, 1000, -1, 28])

// Don't use Tuple for complex data structures, define them as class or structure

