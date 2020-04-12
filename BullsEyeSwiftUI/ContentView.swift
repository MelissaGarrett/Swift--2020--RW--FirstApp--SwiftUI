//
//  ContentView.swift
//  BullsEyeSwiftUI
//
//  Created by Melissa  Garrett on 4/11/20.
//  Copyright © 2020 MelissaGarrett. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State var alertIsVisible: Bool = false
    @State var whosThereIsVisible: Bool = false
    
    var body: some View {
        VStack {
            Text("Welcome to my first app!")
                .fontWeight(.semibold)
                .foregroundColor(Color.green)
            Button(action: {
                print("Button pressed!")
                self.alertIsVisible = true
            }) {
                Text(/*@START_MENU_TOKEN@*/"Hit Me!"/*@END_MENU_TOKEN@*/)
            }
            .alert(isPresented: $alertIsVisible) { () -> Alert in
                    return Alert(title: Text("Hello there!"), message: Text("this is my first popup"), dismissButton: .default(Text("Awesome!")))
            }
            Button(action: {
                self.whosThereIsVisible = true
            }) {
                Text("Knock, Knock!")
            }
            .alert(isPresented: $whosThereIsVisible) { () -> Alert in
                return Alert(title: Text("Who's There?"), message: Text("Me!"), dismissButton: .default(Text("That was funny!")))
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
