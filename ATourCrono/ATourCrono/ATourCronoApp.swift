//
//  ATourCronoApp.swift
//  ATourCrono
//
//  Created by Juan Manuel Moreno on 12/10/24.
//

import SwiftUI
import MapKit

@main
struct ATourCronoApp: App {
    
    @StateObject private var vm = ATourCronoViewModel()
    
    var body: some Scene {
        WindowGroup {
            let action = Action(hour: 7, youCanDo: "Breakfast", place: CLLocationCoordinate2D(latitude: 23.5665976, longitude: 58.3843438))
            ATourCronoView(showDetails: false, action: action).environmentObject(vm)
        }
    }
}
