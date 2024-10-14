//
//  ATourCronoViewModel.swift
//  ATourCrono
//
//  Created by Juan Manuel Moreno on 14/10/24.
//

import Foundation
import MapKit

protocol ATourCronoViewModelProtocol: ObservableObject {
    func bringAction(hour: Int) -> Action
}

class ATourCronoViewModel: ATourCronoViewModelProtocol {
    var schedule = [
        Action(hour: 7, youCanDo: "Breakfast", place: CLLocationCoordinate2D(latitude: 23.5665976, longitude: 58.3843438)),
        Action(hour: 8, youCanDo: "Visit Sultan Qaboos Big Mosque", place: CLLocationCoordinate2D(latitude: 23.5838126, longitude: 58.3860938))]
    
    func bringAction(hour: Int)  -> Action{
        return schedule.first(where: { $0.hour == hour })!
    }
}
