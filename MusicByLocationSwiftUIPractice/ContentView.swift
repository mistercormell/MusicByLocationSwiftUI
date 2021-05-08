//
//  ContentView.swift
//  MusicByLocationSwiftUIPractice
//
//  Created by David Cormell on 08/05/2021.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var location = LocationHandler()
    
    var body: some View {
        VStack {
            Text("\(location.lastKnownLocation?.coordinate.latitude ?? 0.0)")
                .padding()
            Spacer()
            Button("Find Music", action: {
                location.manager.requestLocation()
            })
        }.onAppear(perform: location.requestAuthorisation)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
