//
//  LocationHandler.swift
//  MusicByLocationSwiftUIPractice
//
//  Created by David Cormell on 08/05/2021.
//

import Foundation
import CoreLocation

class LocationHandler: NSObject, CLLocationManagerDelegate, ObservableObject {
    let manager = CLLocationManager()
    @Published var lastKnownLocation: String = ""
    
    override init() {
        super.init()
        manager.delegate = self
    }
    
    func requestAuthorisation() {
        manager.requestWhenInUseAuthorization()
    }
    
    func updateLocation() {
        manager.requestLocation()
    }
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        if let coordinates = locations.first?.coordinate {
            lastKnownLocation = "\(coordinates.latitude)"
        } else {
            lastKnownLocation = "No location Found"
        }
    }
    
    func locationManager(_ manager: CLLocationManager, didFailWithError error: Error) {
        lastKnownLocation = "Error finding location"
    }
    
}
