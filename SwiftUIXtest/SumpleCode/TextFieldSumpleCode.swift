//
//  TextFieldSumpleCode.swift
//  SwiftUIXtest
//
//  Created by TanakaSoushi on 2021/06/22.
//
import SwiftUI
import SwiftUIX

struct ContentView: View {
    @State var text: String = ""
    var body: some View {
        VStack {
            CocoaTextField("placeHolder", text: $text)
                .inputAccessoryView({
                    VStack{
                        Text("inputAccessoryView")
                        Spacer()
                    }
                })
                .isInitialFirstResponder(true)
                .frame(height: 40)
                .background(Color(.systemGray6))
                .cornerRadius(5)
                .padding(.horizontal, 20)
                .offset(y: 100)
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
