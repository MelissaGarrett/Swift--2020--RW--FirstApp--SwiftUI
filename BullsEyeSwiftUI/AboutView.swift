//
//  AboutView.swift
//  BullsEyeSwiftUI
//
//  Created by Melissa  Garrett on 5/7/20.
//  Copyright © 2020 MelissaGarrett. All rights reserved.
//

import SwiftUI

struct AboutView: View {
    let pinkColor = Color(red: 255.0/255.0, green: 214.0/255.0, blue: 179.0/255.0)
    
    struct HeadingStyle: ViewModifier {
        func body(content: Content) -> some View {
        return content
        .font(Font.custom("Arial Rounded MT Bold", size: 30))
        .padding(.top, 20)
        .padding(.bottom, 20)
        .modifier(TextColor())
        }
    }
    
    struct TextViewsStyle: ViewModifier {
        func body(content: Content) -> some View {
        return content
        .font(Font.custom("Arial Rounded MT Bold", size: 16))
        .padding(.leading, 60)
        .padding(.trailing, 60)
        .padding(.bottom, 20)
        .modifier(TextColor())
        }
    }
    
    struct TextColor: ViewModifier {
        func body(content: Content) -> some View {
        return content
        .foregroundColor(Color.black)
        }
    }
    
    var body: some View {
        Group {
            VStack {
                Text("🎯 Bullseye 🎯").modifier(HeadingStyle())
                Text("This is Bullseye, the game where you can win points and earn fame by dragging a slider.").modifier(TextViewsStyle())
                Text("Your goal is to place the slider as close to the target value. The closer you are, the more points you score.").modifier(TextViewsStyle())
                Text("Enjoy!").modifier(TextViewsStyle())
            }
            .navigationBarTitle("About Bullseye")
            .background(pinkColor)
        }
        .background(Image("Background"))
    }
}

struct AboutView_Previews: PreviewProvider {
    static var previews: some View {
        AboutView().previewLayout(.fixed(width: 896, height: 414))
    }
}
