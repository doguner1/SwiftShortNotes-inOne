//
//  IDTI-HomeView.swift
//  SwiftShortNotes-inOne
//
//  Created by qwerty on 15.06.2024.
//

import SwiftUI

struct IDTI_HomeView: View {
    @AppStorage("imageData") var imageData: Data?
    @State var image: UIImage?
    
    var body: some View {
        VStack{
            /*
             imageData nın içine Image atama:
             -> imageData = image?.jpegData(compressionQuality: 0.5)
             
             
             imageDatayı imageye çevirme:
             ->if let imageData = imageData{
                image = UIImage(data: imageData)
              } = data boş dolu kontrolü ile..
             */
        }
    }
}

#Preview {
    IDTI_HomeView()
}
