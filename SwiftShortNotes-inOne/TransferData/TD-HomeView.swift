//
//  TD-HomeView.swift
//  SwiftShortNotes-inOne
//
//  Created by qwerty on 15.06.2024.
//

import SwiftUI

struct TD_HomeView: View {
    @State var name = ""
    @State var age = ""
    @State var gender = ""
    
    @State private var isShowingSheet: Bool = false
    
    var body: some View {
        VStack{
            
            CustomTF(sfIcon: "xmark", hint: "name", value: $name)
            CustomTF(sfIcon: "xmark", hint: "age", value: $age)
            CustomTF(sfIcon: "xmark", hint: "gender", value: $gender)
            
            Button(action: {
                DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                    isShowingSheet = true
                }
                print(name)
            }, label: {
                Text("Button")
            }).sheet(isPresented: $isShowingSheet){
                DataSheet(name: $name, age: $age, gender: $gender)

            }
        }.padding(.horizontal)
    }
    
}

#Preview {
    TD_HomeView()
}
