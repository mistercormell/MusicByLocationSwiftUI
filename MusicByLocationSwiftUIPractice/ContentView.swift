//
//  ContentView.swift
//  MusicByLocationSwiftUIPractice
//
//  Created by David Cormell on 08/05/2021.
//

import SwiftUI

struct ContentView: View {
    let location = LocationHandler()
    
    var body: some View {
        VStack {
            Text("Hello, world!")
                .padding()
            Spacer()
            Button("Find Music", action: {})
        }.onAppear(perform: location.requestAuthorisation)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
