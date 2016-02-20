// ------------------------------------------------------------------------------------------------
// Things to know:
//
// * Type Aliases allow you to provide a different name for types,
//   similar to 'typedef' in C.
// ------------------------------------------------------------------------------------------------

// Create an alias for UInt16 called "AudioSample"
typealias AudioSample = UInt16

// This actually calls UInt16.min
var maxAmplituedFound = AudioSample.min

// We can also typealias custom types
struct MySimpleStruct
{
	static let a = 99
}

typealias MyAliasedName = MySimpleStruct
MyAliasedName.a

// Type Aliases define an alternative name for an existing type
// It's useful when you want to refer to an existing type by a name that is contextually more appropriate
typealias AudioSampleAgain = UInt16

var mySample = AudioSampleAgain.min

