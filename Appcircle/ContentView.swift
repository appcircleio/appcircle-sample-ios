//
//  ContentView.swift
//  Appcircle
//
//  Created by Mustafa on 29.12.2021.
//

import SwiftUI

class FizzBuzzKit {
    /// Filter function that takes a number and returns `true` if the number satisfies a rule
    typealias FilterFunction = (Int) -> Bool

    var rules: [( FilterFunction, String)]

    /// Initialize FizzBuzzKit with divisible numbers and result strings
    /// - Parameter rules: Array of (Int,String) which sets the rules
    /// - Default values are `3` for **Fizz** and `5` for **Buzz**
    init(rules: [(Int, String)] = [(3, "Fizz"), (5, "Buzz")]) {
        self.rules = rules.map({ (number: Int, result: String) in
            ({$0 % number == 0}, result)
        })
    }

    /// Handle the number according to rules
    /// - Parameter number: Number to check
    /// - Returns: Result of the check
    func handle(number: Int) -> String {
        if number <= 0 {
            return "0"
        }
        let filtered = rules.filter { $0.0(number) }
        var result = filtered.map { $0.1 }.joined()
        if result == "" {
            result = "\(number)"
        }
        return result
    }
}

struct FizzBuzzView: View {
    var number: Int
    let fbkit = FizzBuzzKit()
    var body: some View {
        HStack {
            Text("Result: ")
            Text(fbkit.handle(number: number))
                .accessibilityIdentifier("result")
        }
    }
}

struct ContentView: View {
    @State var numberString: String = ""
    var body: some View {

        Text("Appcircle")
        Image("Logo")
            .resizable()
            .frame(width: 64, height: 64)

        Form {
            TextField(text: $numberString, prompt: Text("Enter a number")) {
                Text("Number")
            }
            FizzBuzzView(number: Int(numberString) ?? 0)
        }

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
