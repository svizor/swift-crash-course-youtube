import Foundation

let myAge = 46
let yourAge = 23

if myAge > yourAge {
    "I'm older then you"
} else if myAge < yourAge {
    "I'm younger then you"
} else {
    "Oh hey, we are the same age"
}

let myMotherAge = myAge + 22
let doubleMyAge = myAge * 2

/// 1. unary prefix
let foo = !true

/// 2. unary postfix
let name = Optional("svizor")
type(of: name)
let unaryPostFix = name!
type(of: unaryPostFix)

/// 3. binary infix
let result = 1 + 2
let names = "Foo" + " " + "Bar"

/// ternary operator
let message = myAge > 18
    ? "You are an adult"
    : "You are not yet an adult"
