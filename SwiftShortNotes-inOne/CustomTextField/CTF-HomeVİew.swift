//
//  CTF-HomeVİew.swift
//  SwiftShortNotes-inOne
//
//  Created by qwerty on 11.06.2024.
//

import SwiftUI

struct CTF_HomeVI_ew: View {
    @State private var emailID: String = ""
    @State private var password: String = ""
    var body: some View {
        
        VStack(spacing: 25) {
            Spacer(minLength: 0)
            CustomTF(sfIcon: "at", hint: "Email ID", value: $emailID)
            
            CustomTF(sfIcon: "lock", hint: "Password", isPassword: true, value: $password)
                .padding(.top, 5)
            
            Spacer()
        }.padding(.vertical, 15)
        .padding(.horizontal, 25)
    }
}

#Preview {
    CTF_HomeVI_ew()
}
