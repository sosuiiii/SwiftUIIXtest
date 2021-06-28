//
//  BlurEffectView.swift
//  SwiftUIXtest
//
//  Created by TanakaSoushi on 2021/06/28.
//

import SwiftUI
import SwiftUIX

struct ContentView: View {
    var body: some View {
        ZStack{
            
            Image("sumple")
                .clipShape(Circle())
                .overlay(Circle()
                .stroke(Color.systemGray6, lineWidth: 2))
                .blur(radius: 1)
                .shadow(radius: 10)
            Text("BlurEffectView")
                .padding(100)
                .foregroundColor(.white)
                .background(BlurEffectView(style: .dark))
        }
        
    }
}
