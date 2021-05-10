//
//  StateController.swift
//  MusicByLocationSwiftUIPractice
//
//  Created by David Cormell on 10/05/2021.
//

import Foundation

class StateController: ObservableObject {
    @Published var lastKnownLocation: String = ""
    let locationHandler: LocationHandler = LocationHandler()
    
    func findMusic() {
        locationHandler.stateController = self
        locationHandler.updateLocation()
    }
    
    func requestAccessToLocationData() {
        locationHandler.requestAuthorisation()
    }
    
}
