import UIKit

// Using closures as parameters when they accept parameters

func travel(action: (String) -> Void) {
    print("I'm getting ready to go.")
    action("London")
    print("Ih have arrived")
}

travel { (place: String) in
    print("I'm going to \(place) in my car.")
}

// Using closures as parameters when they return values

func travel2(action: (String) -> String) {
    print("I'm getting ready to go.")
    let description = action("London")
    print(description)
    print("I arrived!")

}
travel2 { (place: String) -> String in
    return "I'm going to \(place) in my car"
}


// Shorthand parameter names

func travel3(action: (String) -> String) {
    print("I'm getting ready to go.")
    let description = action("London")
    print(description)
    print("I arrived!")
}

travel3 {
    "I'm going to \($0) in my car"
}

 // Closures with multiple parameters

func travel4(action: (String, Int) -> String) {
    print("I'm ready to go.")
    let description = action("London", 60)
    print(description)
    print("I have arrived!")
}

travel4 {
    "I'm going to \($0), driving at \($1) mph."
}

// Returning closures from functions

func travel5() -> (String) -> Void {
    return {
        print("I'm going to \($0)")
    }
}

let result = travel5()
result("ROME")

// Capturing values

func travel6() -> (String) -> Void {
    var counter = 1
    return {
        print("\(counter). I'm going to \($0)")
        counter += 1
    }
}

let result2 = travel6()
result2("Milan")
result2("Paris")
