//
//  ImagePickerSumpleCode.swift
//  SwiftUIXtest
//
//  Created by TanakaSoushi on 2021/06/23.
//

import SwiftUI
import SwiftUIX

struct ContentView: View {
    @State private var image: Image = Image("icon")
    @State private var showingImagePicker = false
    @State private var inputImage: UIImage?
    var body: some View {
        
        VStack {
            Spacer()
            Button(action: {
                print("Tapped")
                self.showingImagePicker = true
            }) {
                image
                    .resizable()
                    .renderingMode(.original)
                    .frame(width: 100, height: 100)
                    .cornerRadius(10.0)
                Text("写真を選択")
            }.sheet(isPresented: $showingImagePicker, onDismiss: loadImage) {
                ImagePicker(image: $inputImage)
            }
            Spacer()
        }
    }
    func loadImage() {
        guard let inputImage = inputImage else { return }
        image = Image(uiImage: inputImage)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
