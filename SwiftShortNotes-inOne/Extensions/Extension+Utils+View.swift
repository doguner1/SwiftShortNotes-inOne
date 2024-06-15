//
//  Extension+Utils+View.swift
//  SwiftShortNotes-inOne
//
//  Created by qwerty on 11.06.2024.
//

import SwiftUI

extension View {
//---------------------------------------------------------------------------------------------------------
    @ViewBuilder
    func hSpacing(_ alignment: Alignment = .center) -> some View {
        self
            .frame(maxWidth: .infinity, alignment: alignment)
    }
    /*
     GradientButton(title: "Login", icon: "arrow.right") {
         /// YOUR CODE
         askOTP.toggle()
     }
     .hSpacing(.trailing)    -> Butonu en sola çekti
     */
    
    
    
//---------------------------------------------------------------------------------------------------------
    @ViewBuilder
    func vSpacing(_ alignment: Alignment = .center) -> some View {
        self
            .frame(maxHeight: .infinity, alignment: alignment)
    }
    /*
     GradientButton(title: "Login", icon: "arrow.right") {
         /// YOUR CODE
         askOTP.toggle()
     }
     .disableWithOpacity(emailID.isEmpty || password.isEmpty)   ->Boş ise geçersiz buton yaptı
     */
    
    
//---------------------------------------------------------------------------------------------------------
    @ViewBuilder
    func disableWithOpacity(_ condition: Bool) -> some View {
        self
            .disabled(condition)
            .opacity(condition ? 0.5 : 1)
    }
    
    
//---------------------------------------------------------------------------------------------------------
}
