//
//  CocoaScrollView.swift
//  SwiftUIXtest
//
//  Created by TanakaSoushi on 2021/06/23.
//

import SwiftUI
import SwiftUIX

struct ContentView: View {

    var body: some View {
        
            CocoaScrollView(.vertical, showsIndicators: true) {
                VStack(alignment: .center, spacing: 10) {
                    ForEach(0..<30) { _ in
                        Text("test")
                            .foregroundColor(.white)
                            .frame(width: 100, height: 50)
                            .backgroundFill(.green)
                    }
                }
            }
            .background(Color.blue)
            .frame(max: CGSize(width: 200, height: UIScreen.main.bounds.height))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
