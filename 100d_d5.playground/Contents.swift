import UIKit

// Functions

// Writing functions

func printHelp() {
    let message = """
Welcome to my App!

Run this app inside a directory of images and
MyApp will resize them all into thumbnails
"""
}

printHelp()

// Accepting Parameters

print("Hello World!")

func square(number: Int) {
    print(number*number)
}

square(number: 8)

// Returning Values

func square2(number2: Int) -> Int {
    return number2 * number2
}

let result = square2(number2: 8)
print(result)

// Parameter labels
func sayHello (to name: String) {
    print("Hello \(name)")
}

sayHello(to: "Taylor")

// Omitting parameter labels

func greet(_ person: String) {
    print("Hello \(person)")
}
greet("Piero")

// Default parameters

func greet2(_ person: String, nicely: Bool = true) {
    if nicely == true {
        print("Hello \(person)")
    } else {
        print("Oh no! It's \(person) again...")
    }
}

greet2("Piero", nicely: false)

greet2("Piero")

// Variadic Functions
// They accept any number of parameters

print("Haters", "Gonna", "Hate")

func square3(numbers: Int...) {
    for number in numbers {
        print("\(number) squared is \(number * number)")
    }
}

print(square3(numbers: 1,2,3,5,55))

// Writing throwing functions

enum PasswordError: Error {
    case obvious
}

func checkPassword(_ password: String) throws -> Bool {
    if password == "password" {
        throw PasswordError.obvious
    } else {
        return true
    }
}

// Running throwing functions

do {
    try checkPassword("password")
    print("That password is good")
} catch {
    print("You can't use that password.")
}

// inout parameters

func doubleInPlace(number: inout Int) {
    number *= 2
}

var myNum = 10
doubleInPlace(number: &myNum)


