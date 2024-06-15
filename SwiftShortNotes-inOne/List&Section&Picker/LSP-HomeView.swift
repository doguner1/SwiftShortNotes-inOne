//
//  LSP-HomeView.swift
//  SwiftShortNotes-inOne
//
//  Created by qwerty on 15.06.2024.
//

import SwiftUI

struct LSP_HomeView: View {
    @State private var selectedOption = 0
    let options = [
        ("Beden Eğitimi"), ("Biyoloji")]
    
    var body: some View {
        VStack {
            List{
                Section{
                    Text("Deneme1")
                    Text("Deneme1")
                }header: {
                    Text("Test1")
                }
                
                Section{
                    Picker("Bölüm Seçiniz", selection: $selectedOption){
                        ForEach(0..<options.count, id: \.self){ index in
                            HStack{
                                Image(systemName: "person.circle.fill")
                                Text(options[index])
                            }
                        }
                    }
                    .onChange(of: selectedOption){ //oldValue , newValue in eski ve yeni değerlerini kullanabilirsin ya da hiç bir şey yazmazsın
//                        oabtKatsayi = options[selectedOption].0
//                        oabtPuan = options[selectedOption].1

                    }
                }header: {
                    Text("Test2")
                }
            }
            
            List{
                Section{
                    Text("Deneme1")
                    Text("Deneme1")
                }header: {
                    Text("Test1")
                }

            }
            
            //Sayfa geçişi için şu şekilde yazılacak
            NavigationStack {
                List{
                    Section{
                        Text("Deneme3")
                        Text("Deneme3")
                    }header: {
                        Text("Test3")
                    }
                    
                    NavigationLink(destination: CB_HomeView()) {
                        HStack{//yatay sıralama
                            Image(systemName: "2.circle")
                                .resizable() //
      
                                .frame(width: 20,height: 20)
                            
                            Text("Ön Lisans")
                                .badge(
                                    Text("P94")
                                        .italic()
                                        
                                )
                            
                        }.navigationTitle("Deneme3")
                    }
                }
            }
            
        }
    }
}

#Preview {
    LSP_HomeView()
}
