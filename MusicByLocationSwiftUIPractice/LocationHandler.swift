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
    let geocoder = CLGeocoder()
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
        if let firstLocation = locations.first {
            geocoder.reverseGeocodeLocation(firstLocation, completionHandler: { (placemarks, error) in
                if error != nil {
                    self.lastKnownLocation = "Could not perform lookup of location from coordinate information"
                } else {
                    if let firstPlacemark = placemarks?[0] {
                        self.lastKnownLocation = firstPlacemark.locality ?? "Couldn't find locality"
                    }
                }
            })
        }
    }
    
    func locationManager(_ manager: CLLocationManager, didFailWithError error: Error) {
        lastKnownLocation = "Error finding location"
    }
    
}
