//
//  CollectionViewSumpleCode.swift
//  SwiftUIXtest
//
//  Created by TanakaSoushi on 2021/06/24.
//

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
        CollectionView(languages, rowContent: { language in
            Text("\(language.name)")
        })
        .height(30)
        .backgroundFill(Color.systemGray6)
        .padding()
        Spacer()
        
    }
}
struct Language: Identifiable {
    var id = UUID()
    var name: String
}
