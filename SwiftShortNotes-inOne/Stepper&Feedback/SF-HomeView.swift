//
//  SF-HomeView.swift
//  SwiftShortNotes-inOne
//
//  Created by qwerty on 15.06.2024.
//

import SwiftUI

struct SF_HomeView: View {
    @State private var gkDogruSayisi: Double = 30
    var body: some View {
        VStack {
            Form {
                
                Section{
                    Stepper("Doğru Sayısı: \(gkDogruSayisi , specifier: "%.0f")",value: $gkDogruSayisi, in: 0...60) //->spacifier: "%.0f ile virgülden sonraki double değerlerini göstermesini engelledik"
                    //-> "%.1f olsaydı virgülden sonra sadece bir rakamını gösterir"
                        .sensoryFeedback(.selection, trigger: gkDogruSayisi) //gkDogruSayisinde bir değişiklik (.selection) olduğunda titreşim ver
                }
            }
        }
    }
}

#Preview {
    SF_HomeView()
}
