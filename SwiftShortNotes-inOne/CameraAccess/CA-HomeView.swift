//
//  CA-HomeView.swift
//  SwiftShortNotes-inOne
//
//  Created by Dogu on 11.06.2024.
//

import SwiftUI

struct CA_HomeView: View {
    @State private var showCamera = false
       @State private var capturedImage: UIImage?
       
       var body: some View {
           VStack {
               Button(action: {
                   showCamera.toggle()
               }) {
                   Text("Open Camera")
                       .padding()
                       .background(Color.blue)
                       .foregroundColor(.white)
                       .cornerRadius(10)
               }
               .sheet(isPresented: $showCamera) {
                   CameraView(showCamera: $showCamera, capturedImage: $capturedImage)
               }
               
               if let image = capturedImage {
                   Image(uiImage: image)
                       .resizable()
                       .scaledToFit()
                       .frame(maxWidth: .infinity, maxHeight: .infinity)
                       .edgesIgnoringSafeArea(.all)
               } else {
                   Image(systemName: "person")
                       .resizable()
                       .frame(width: 100, height: 100)
                       .foregroundColor(.gray)
               }
           }
           .padding()
       }
   }


#Preview {
    CA_HomeView()
}
