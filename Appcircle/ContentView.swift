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
    
    let images = ["image1", "image2", "image3", "image4", "image5", "image6", "image7", "image8", "image9","image1copy", "image2copy", "image3copy", "image4copy", "image5copy", "image6copy", "image7copy", "image8copy", "image9copy", "image1copy copy", "image2copy copy", "image3copy copy", "image4copy copy", "image5copy copy", "image6copy copy", "image7copy copy", "image8copy copy", "image9copy copy"]
    var body: some View {

        VStack{
            Text("Appcircle")
    //        Image("Logo")
    //            .resizable()
    //            .frame(width: 64, height: 64)
    //
    //        Form {
    //            TextField(text: $numberString, prompt: Text("Enter a number")) {
    //                Text("Number")
    //            }
    //            FizzBuzzView(number: Int(numberString) ?? 0)
    //        }
            
            ScrollView {
                ForEach(images, id:\.self) { image in
                    Image(image)
                        .resizable()
                        .frame(width: 200, height: 300)
                }
            }
        }

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
