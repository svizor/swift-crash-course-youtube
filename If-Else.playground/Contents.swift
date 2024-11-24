import Foundation

let myName = "Andrii"
let myAge = 46
let yourName = "Foo"
let yourAge = 23

if myName == "andrii" {
    "Your name is \(myName)"
} else {
    "Oops, I guessed it wrong"
}

if myName == "Andrii" {
    "Now I guessed correctly"
} else if myName == "Foo" {
    "Are you foo?"
} else {
    "Okey I give up"
}

if "Andrii" == myName {
    "An uncommon way of doing this"
}

if myName == "Andrii" && myAge == 46 {
    "My name is \(myName) and I \(myAge) years old"
} else if myAge == 23 {
    "I onle guessed the age right"
} else {
    "I don't know what I'm doing"
}

if myAge == 46 || myName == "Foo" {
    "Either age is 20, name is Foo or both"
} else if myName == "Andrii" || myAge == 23 {
    "It's too late to get in this clouse"
}

if myName == "Andrii"
    && myAge == 46
    && yourName == "Foo"
    || yourAge == 23 {
    "My name is \(myName) and I'm \(myAge) and you name is \(yourName)...OR... you are \(yourAge)"
}

if (myName == "Andrii" && myAge == 46)
    &&
    (yourName == "Baz" || yourAge == 43) {
    "My name is \(myName) and I'm \(myAge) and you name is \(yourName)...OR... you are \(yourAge)"
} else {
    "Hmmm, that didn't work so well"
}
