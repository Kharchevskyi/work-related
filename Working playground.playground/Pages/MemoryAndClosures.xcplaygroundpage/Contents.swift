import UIKit
import PlaygroundSupport

class Person {
    var name: String
    var age: Int

    init(name: String, age: Int) {
        self.name = name
        self.age = age
        print("\(name) Initialised")
    }

    deinit {
        print("\(name) De-initialised")
    }

    lazy var growOld: (Int) -> Void = { [unowned self] by in
        self.age += by
        print(self.age)
    }
}

do {
    let mark = Person(name: "Mark", age: 10)
    mark.growOld(3)
}

print("******\n\n")


var currentYear = 2019
let printCurrentYear = {
    print("We are in year =", currentYear)
}
let printCurrentYearUsingClosureList = { [currentYear] in
    print("Using closure lists, we are in year =", currentYear)
}

currentYear = 2021

printCurrentYear()
printCurrentYearUsingClosureList()

currentYear = 2022

let printCurrentYearWithOutShadow = { [curYear = currentYear, nextYear = currentYear + 1] in
    print("We are in year =", curYear, "and next year is =", nextYear)

}
printCurrentYearWithOutShadow()
currentYear = 2024
printCurrentYearWithOutShadow()

print("******\n\n")

class Year {
    var currentYear: String

    init(currentYear: String) {
        self.currentYear = currentYear
    }

    deinit {
        print("Year de-initialised")
    }

    func getYear() { print("Current year is =", currentYear) }
}

var getCurrentYear : () -> Void
do {
    let year = Year(currentYear: "2019")
    getCurrentYear = { [weak curYear = year] in
        guard let currYear = curYear else {
            print("Unknown year ")
            return
        }
        currYear.getYear()
    }

    getCurrentYear()
    year.currentYear = "2020"
    getCurrentYear()
}
getCurrentYear()


print("\n******\nhttps://swiftunboxed.com/lang/closures-escaping-noescape-swift3/")

class ClassA {
    // takes a closure (non-escaping by default)
    func someMethod(closure: () -> Void) {
        // secret stuff
    }

    func someEscapingMethod(closure: @escaping () -> Void) {
        // secret stuff
    }
}

class ClassB {
    let classA = ClassA()
    var someProperty = "Hello"

    func testClosure() {
        classA.someMethod {
            // self is captured!
            someProperty = "Inside the closure!"
        }
        classA.someEscapingMethod {
            // here need to call self
            self.someProperty = ""
        }
    }
}


print("\n******\nhttps://blog.bobthedeveloper.io/swift-capture-list-in-closures-e28282c71b95")

var a = 0
var b = 0

let closure = { print(a, b) }
closure()

a = 6
b = 9

closure()


var closureArray: [() -> ()] = []

var i = 0
for _ in 1...5 {
    closureArray.append { print(i) }
    i += 1
}

closureArray[0]() // 5 😲
closureArray[1]() // 5 🤔
closureArray[2]() // 5 😨
closureArray[3]() // 5 😭
closureArray[4]() // 5 😱

var c = 0
var d = 0

let smartClosure: () -> () = { [c, d] in
    print(c, d)
}

c = 6
d = 9

smartClosure()
