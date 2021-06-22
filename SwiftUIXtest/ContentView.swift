//
//  ContentView.swift
//  SwiftUIXtest
//
//  Created by TanakaSoushi on 2021/06/22.
//

import SwiftUI
import SwiftUIX

//struct ContentView: View {
//    var body: some View {
//        Text("Hello, world!")
//            .padding()
//    }
//}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
struct ContentView: View {

    @State var text: String = ""

    var body: some View {

        NavigationView {
            VStack {
                CocoaTextField("", text: $text)
                    .isInitialFirstResponder(true)
                    .frame(height: 50)
                    .background(Color(.systemGray6))
                    .cornerRadius(10)
                    .padding(.horizontal, 15)
                    .offset(y: 100)
                Spacer()
            }
            .navigationBarTitle("New item", displayMode: .inline)
            .navigationBarItems(leading: Button(action: {
                print("cancelボタンタップ")
            }, label: {
                Text("Cancel")
            }), trailing: Button(action: {
                print("doneボタンタップ")
            }, label: {
                Text("Done")
                    .bold()
            }))
        }
    }

}

struct InputView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
