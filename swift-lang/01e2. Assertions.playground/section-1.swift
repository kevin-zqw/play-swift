// ------------------------------------------------------------------------------------------------
// Things to know:
//
// * Assertions only trigger in debug mode and not in published builds
//
// * Assertions cause your app to terminate on the line and the debugger jumps to the line
// ------------------------------------------------------------------------------------------------

// Let's start with a value...
let age = 3

// You can assert with a message
assert(age >= 0, "A person's age cannot be negative")

// You can assert without the message
assert(age >= 0)

// assert(_:_file:line:)

// When to Use Assertions
/*
Use an assertion whenever a condition has the potential to be false, 
but must DEFINITELY be true in order for your code to continue execution. 
Suitable scenarios for an assertion check include:

    An integer subscript index is passed to a custom subscript implementation, but the subscript index value could be too low or too high.
    A value is passed to a function, but an invliad value means that the function cannot fulfill its task.
    An optional value is currently nil, but a non-nil value is essential for subsequent code to execute successfully.
*/

// Use unit testing framework such as Quick to make your code better.
// Quick's assertions are good and more expressive

