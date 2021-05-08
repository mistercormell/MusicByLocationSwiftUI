//
//  LocationHandler.swift
//  MusicByLocationSwiftUIPractice
//
//  Created by David Cormell on 08/05/2021.
//

import Foundation
import CoreLocation

class LocationHandler {
    let manager = CLLocationManager()
    
    func requestAuthorisation() {
        manager.requestWhenInUseAuthorization()
    }
    
}
