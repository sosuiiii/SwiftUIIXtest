//
//  VisualEffectView.swift
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
                .resizable()
                .scaledToFill()
                .edgesIgnoringSafeArea(.all)
            VisualEffectView(effect: UIBlurEffect(style: .dark), content: {
                Text("BlurEffectView")
                    .foregroundColor(.white)
            })
            
        }
        
    }
}
