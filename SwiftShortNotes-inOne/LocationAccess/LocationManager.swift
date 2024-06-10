//
//  LocationManager.swift
//  SwiftShortNotes-inOne
//
//  Created by Dogu on 10.06.2024.
//


import CoreLocation

class LocationManager: NSObject, CLLocationManagerDelegate, ObservableObject {
  private let locationManager = CLLocationManager()
  @Published var coordinates: CLLocationCoordinate2D?

  override init() {
    super.init()
    locationManager.delegate = self
    locationManager.desiredAccuracy = kCLLocationAccuracyBest
  }

  func requestLocation() {
    locationManager.requestWhenInUseAuthorization()
    locationManager.startUpdatingLocation()
  }

  func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
    guard let location = locations.first else { return }
    coordinates = location.coordinate
    locationManager.stopUpdatingLocation()
  }

  func locationManager(_ manager: CLLocationManager, didFailWithError error: Error) {
    print("Error fetching location: \(error)")
  }
}
