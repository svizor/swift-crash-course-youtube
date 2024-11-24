import Foundation


func noArgumentsAndNoReturnValue() {
    "I don't know what I'm doing"
}
noArgumentsAndNoReturnValue()


func plusTwo(value: Int) {
    let newValue = value + 2
}
plusTwo(value: 12)


func newPlusTwo(value: Int) -> Int {
    return value + 2
}
newPlusTwo(value: 30)


func customAdd(
    value1: Int,
    value2: Int
) -> Int {
    value1 + value2
}
customAdd(value1: 2, value2: 2)


func customAdd2(value1: Int, value2: Int) -> Int
{
    value1 + value2
}
let customAdded = customAdd2(value1: 8, value2: 8)


func customMinus(_ lhs: Int, _ rhs: Int) -> Int {
    lhs - rhs
}
let customMinused = customMinus(20, 10)


@discardableResult
func myCustomAdd(
    _ lhs: Int,
    _ rhs: Int
) -> Int {
    lhs + rhs
}
myCustomAdd(20, 30)


func doSomethingComplicated(with value: Int) -> Int
{
    func mainLogic(value: Int) -> Int
    {
        value + 2
    }
    return mainLogic(value: value + 3)
}
doSomethingComplicated(with: 30)


func getFullName(firstName: String = "Foo", lastName: String = "Bar") -> String
{
    "\(firstName) \(lastName)"
}
getFullName()
getFullName(firstName: "Baz")
getFullName(lastName: "Qux")
getFullName(firstName: "Andrii", lastName: "Dovhyi")
