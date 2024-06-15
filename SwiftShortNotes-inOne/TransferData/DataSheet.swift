//
//  DataSheet.swift
//  SwiftShortNotes-inOne
//
//  Created by qwerty on 15.06.2024.
//

import SwiftUI

struct DataSheet: View {
    
    @Binding var name: String
    @Binding var age: String
    @Binding var gender: String

    @Environment(\.dismiss) private var dismiss //açık olan sheet i kapatmamız için gerekli
    var body: some View {
        NavigationStack {
            VStack {
                List{
                    Section {
                        Text("Deneme1: \(name)")
                        Text("Deneme1: \(age)")
                        if !gender.isEmpty {
                            Text("Deneme1: \(gender)")
                        }
                    }header: {
                        Text("Deneme1")
                    }
                }
            }
            .navigationTitle("Deneme1")
            .toolbar{
                ToolbarItem(placement: .principal) {
                    Button("Kapat", systemImage: "xmark", action: {
                        dismiss()
                    })
                }
            }
        }
    }
}
