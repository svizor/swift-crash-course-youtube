import Foundation

let add: (Int, Int) -> Int = {(lhs: Int, rhs: Int) -> Int in lhs + rhs}

add(10, 10)

func customAdd(_ lhs: Int, _ rhs: Int, using function: (Int, Int) -> Int) -> Int
{
    function(lhs, rhs)
}

customAdd(46, 23, using: add)
customAdd(46, 23, using: {(lhs: Int, rhs: Int) -> Int in lhs + rhs})
customAdd(46, 23)
{
    (lhs: Int, rhs: Int) -> Int in lhs + rhs
}
customAdd(46, 23){(lhs, rhs) in lhs + rhs}
customAdd(46, 23){$0 + $1}

let ages = [46, 23, 11, 30]
ages.sorted(by: {(lhs: Int, rhs: Int) -> Bool in lhs < rhs})
ages.sorted(by: <)
ages.sorted(by: >)

// dirty example
func customAdd2(using function: (Int, Int) -> Int, _ lhs: Int, _ rhs: Int) -> Int
{
    function(lhs, rhs)
}

customAdd2(using:{$0 + $1}, 46, 23)
customAdd2(using:{$0 + $1 + 10}, 46, 13)

func add10To(value: Int) -> Int
{
    value + 10
}

func add20To(value: Int) -> Int
{
    value + 20
}

func doAddition(on value: Int, using function: (Int) -> Int) -> Int
{
    function(value)
}

doAddition(on: 40, using: add10To(value:))
doAddition(on: 40, using: add20To(value:))
doAddition(on: 40, using: add10To)
doAddition(on: 40, using: add20To)
