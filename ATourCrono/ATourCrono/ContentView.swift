//
//  ContentView.swift
//  ATourCrono
//
//  Created by Juan Manuel Moreno on 12/10/24.
//

import SwiftUI
import MapKit

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
        }
        .padding()
        ClockView()
        Map(coordinateRegion: .constant(MKCoordinateRegion(
            center: CLLocationCoordinate2D(
                latitude: 23.5665976, longitude: 58.3843438),
            span: MKCoordinateSpan(
                latitudeDelta: 0.005, longitudeDelta: 0.005)))
        )
    }
}

#Preview {
    ContentView()
}
