//
//  ActivityIndicatorSumpleCode.swift
//  SwiftUIXtest
//
//  Created by TanakaSoushi on 2021/06/22.
//
import SwiftUI
import SwiftUIX

struct ContentView: View {
    @State var text: String = ""
    @State var activity = ActivityIndicator()
        .tintColor(UIColor.red)
        .style(.large)
    @State var activityProgress = true
    var body: some View {
        
        VStack {
            Spacer()
            activity.animated(activityProgress)
            Button(action: {
                activityProgress.toggle()
            }, label: {
                Text("IndicatorToggle")
            })
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
