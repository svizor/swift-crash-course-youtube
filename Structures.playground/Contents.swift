import Foundation


struct Person {
    let name: String
    let age: Int
}

let foo = Person(
    name: "Andrii",
    age: 46
)

foo.name
foo.age

//struct CommodereComputer {
//    let name: String
//    let manufacturer: String
//    init(name: String) {
//        self.name = name
//        self.manufacturer = "Commodore"
//    }
//}

//let c64 = CommodereComputer(
//    name: "My commodore"
//    manufacturer: "Commodore"
//)
//
//let c128 = CommodereComputer(
//    name: "My commodore 128"
//    manufacturer: "Commodore"
//)

struct CommodereComputer {
    let name: String
    let manufacturer = "Commodore"

}

let c64 = CommodereComputer(
    name: "My commodore"
)

let c128 = CommodereComputer(
    name: "My commodore 128"
)

c64.name
c64.manufacturer
c128.name
c128.manufacturer

struct Person2 {
    let firstName: String
    let lastName: String
    var fullName: String {
        "\(firstName) \(lastName)"
    }
}

let svizor = Person2(
    firstName: "Andrii",
    lastName: "Dovhyi"
)
svizor.firstName
svizor.lastName
svizor.fullName

struct Car {
    var currentSpeed: Int
    mutating func drive(speed: Int) {
        "Driving..."
        currentSpeed = speed
    }
}

let immutableCar = Car(currentSpeed: 10)
//immutableCar.drive(speed: 90) // error

var mutableCar = Car(currentSpeed: 10)

let copy = mutableCar

mutableCar.drive(speed: 90)
mutableCar.currentSpeed
//copy.drive(speed: 90) // error
copy.currentSpeed

struct LivingThing {
    init() {
        "I'm a living thing"
    }
}

//struct Animal: LivingThing { // error
//
//}

struct Bike {
    let manufacturer: String
    let currentSpeed: Int
    func copy(currentSpeed: Int) -> Bike {
        Bike(
            manufacturer: self.manufacturer,
            currentSpeed: currentSpeed
        )
    }
}

let bike1 = Bike(
    manufacturer: "Harley Davidson",
    currentSpeed: 20
)

let bike2 = bike1.copy(currentSpeed: 90)

bike1.currentSpeed
bike2.currentSpeed
