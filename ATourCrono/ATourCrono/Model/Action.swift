//
//  Action.swift
//  ATourCrono
//
//  Created by Juan Manuel Moreno on 14/10/24.
//

import Foundation
import MapKit

struct Action {
    let hour: Int
    let youCanDo: String
    let place: CLLocationCoordinate2D
    
    init(hour: Int, youCanDo: String, place: CLLocationCoordinate2D) {
        self.hour = hour
        self.youCanDo = youCanDo
        self.place = place
    }
}
