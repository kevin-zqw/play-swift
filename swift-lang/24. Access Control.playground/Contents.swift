//: Playground - noun: a place where people can play

import UIKit
import Foundation

// Modules and Source Files, A module is a single unit of code distribution(a Framework or Application)
// Swift's access control is based on Modules and Source Files

// Public access
// Internal access
// Private access

// Guiding Principle of Access Levels
// No entity can be defined in terms of another entity that has a lower(more restrictive) access level.

// Access level for Single-Target Apps is: internal
// Access level for Framework is: Mark Public to make it can be viewed and accessed by other modules.
// Access level for Unit Test Targets: Use @testable attribute and compile that product module 
// with testing enabled.

public class SomePublicClass {}
internal class SomeInternalCalss {}
private class SomePrivateClass {}

public var publicVar = 0
internal let internalVar = 5

private func somePrivateFunction() {}

// The default access level is internal

