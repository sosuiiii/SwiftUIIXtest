//
//  CocoaList.swift
//  SwiftUIXtest
//
//  Created by TanakaSoushi on 2021/06/24.
//

import UIKit
import SwiftUI
import SwiftUIX

struct ContentView: View {
    let languages = [Language(name: "Swift"),
                     Language(name: "SwiftUI"),
                     Language(name: "SwiftUIX"),
                     Language(name: "RxSwift"),
                     Language(name: "Combine"),
                     Language(name: "Flutter")]
    var body: some View {
        Spacer()
        CocoaList(content: {
            ForEach(enumerating: languages) {index,language in
                HStack {
                    Text("\(index)_\(language.name)")
                        .height(40)
                    Spacer()
                }
                
            }
        })
        .padding()
    }
}
struct Language: Identifiable {
    var id = UUID()
    var name: String
}
