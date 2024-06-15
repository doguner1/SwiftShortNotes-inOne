//
//  ShortNotes.swift
//  SwiftShortNotes-inOne
//
//  Created by qwerty on 15.06.2024.
//

/*
 -----------------------------
Button(action: {
}, label: {
    Label(title, systemImage: "plus.forwardslash.minus") //Text yazıyorduk ama Label hem image hem title imkanını aynı
        
})
.buttonStyle(.borderedProminent)//Buttonun arka alanını dolduran mavilik

 
 -----------------------------
 @Environment(\.dismiss) private var dismiss //açık olan sheet i kapatmamız için gerekli
 
 -----------------------------
 footer: { //footer, hata mesajı göstermek amaçla çalışabilir. Mesela burada, button disaple olduğu an, toplam yanlış ve doğru 60ı geçmiş demekttir. Bunu kırmızı renk ile hesapla butonun hemen altında uyarı tonda kullanıcıya bildirmiş oluyoruz.
 if(formKontrol){
     Text("Toplam doğru ve yanlış sayıları 60'ı geçemez")
         .foregroundStyle(.red)

 }
}
 .disabled(formKontrol) //kontrol sonrası true dönerse disable olacak
 
 
 -----------------------------
 .toolbar{ 
     ToolbarItem(placement: .principal) {
         /*
          .topBarTrailing -> üst sağ tarafa buton ekler
          topBarLeading -> üst sol tarafa buton ekler
          .principal   -> üst ortaya ekler
          */
         Button("Kapat", systemImage: "xmark", action: {
             dismiss()
         })
     }
 }
 */
