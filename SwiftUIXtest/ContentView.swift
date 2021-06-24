//
//  ContentView.swift
//  SwiftUIXtest
//
//  Created by TanakaSoushi on 2021/06/22.
//
import SwiftUI
import SwiftUIX

struct ContentView: View {
    @State private var showActivityView: Bool = false
    var body: some View {
        Button(action: {
                self.showActivityView = true
            }) {
                Image(systemName: "square.and.arrow.up")
            }
            .sheet(isPresented: self.$showActivityView) {
                AppActivityView(activityItems: ["abc"], applicationActivities: nil)
            }
    }
}
