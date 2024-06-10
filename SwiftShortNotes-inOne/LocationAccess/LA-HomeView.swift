//
//  LA-HomeView.swift
//  SwiftShortNotes-inOne
//
//  Created by Dogu on 10.06.2024.
//

import SwiftUI
import CoreLocation


struct LA_HomeView: View {
    @StateObject private var locationManager = LocationManager()
    @State private var location: CLLocationCoordinate2D?
    var body: some View {
        Text("Enlem: \(String(describing: locationManager.coordinates?.latitude))")
        Text("Boylam: \(String(describing: locationManager.coordinates?.longitude))")
        Button(action: {
            locationManager.requestLocation()
            
        }, label: {
            Text("Get Location")
                .padding()
                .background(Color.blue)
                .foregroundColor(.white)
                .cornerRadius(10)
        }).onAppear {
            //Sayfa açıldığı an konum çekecek
            
        }
    }

}

#Preview {
    LA_HomeView()
}
