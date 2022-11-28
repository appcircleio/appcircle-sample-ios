//
//  ContentView.swift
//  Appcircle
//
//  Created by Mustafa on 29.12.2021.
//

import SwiftUI
import FizzBuzzKit

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
