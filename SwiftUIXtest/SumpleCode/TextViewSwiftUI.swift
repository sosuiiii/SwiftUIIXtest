//
//  TextFieldSwiftUI.swift
//  SwiftUIXtest
//
//  Created by TanakaSoushi on 2021/06/22.
//
import SwiftUI
import SwiftUIX

struct ContentView: View {
    @State var text: String = ""
    @State var isEditing = false
    @State var activity = ActivityIndicator()
        .tintColor(UIColor.red)
        .style(.large)
    @State var activityProgress = true
    var body: some View {
        
        VStack {
            Spacer()
            TextView("placeholder text", text: $text, onEditingChanged: { editing in
                print(editing)
            })
            .padding()
            Spacer()
            SearchBar("Search...", text: $text, isEditing: $isEditing)
                .showsCancelButton(isEditing)
                .onCancel { print("Canceled!") }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
