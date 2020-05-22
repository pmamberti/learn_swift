import UIKit

var str = "Hello, playground"

// Creating basic closures

let driving = {
    print("I'm driving in my car")
}

driving()

// Accepting parameters in closures

let driving2 = { (place: String) in
    print("I'm driving in my car, going to \(place).")
}

driving2("home")

// Return values from a closure

let drivingWithReturn = { (place: String) -> String
in
    return "I'm going to \(place) with my car."
    
}
    
let message = drivingWithReturn("Rome")

print(message)

// Closures as parameters

func travel(action: () -> Void) {
    print("I am getting ready to go.")
    action()
    print("I Arrived!")
}

travel(action: driving)

// Trailing Closure Syntax

travel {
    print("MEh!")
}
