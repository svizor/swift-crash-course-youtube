import Foundation

let myName = "Andrii"
let yourName = "Foo"

var names = [
    myName,
    yourName
]

names.append("Bar")
names.append("Baz")

//for i in 0..<names.count {
//    print(names[i])
//}

let oldArray = NSMutableArray(
    array: [
        "Foo",
        "Bar"
    ]
)

oldArray.add("Baz")
var newArray = oldArray
newArray.add("Qux")
oldArray
newArray

//Bad example
let someNames = NSMutableArray(
    array: [
        "Foo",
        "Bar"
    ]
)

func changeArray(_ array: NSArray) {
    let copy = array as! NSMutableArray
    copy.add("Baz")
}

changeArray(someNames)
someNames
