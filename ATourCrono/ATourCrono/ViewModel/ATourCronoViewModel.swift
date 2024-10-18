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
        Action(hour: 7, youCanDo: "Breakfast in center of Muscat", place: CLLocationCoordinate2D(latitude: 23.5665976, longitude: 58.3843438)),
        Action(hour: 8, youCanDo: "Visit Sultan Qaboos Big Mosque", place: CLLocationCoordinate2D(latitude: 23.5838126, longitude: 58.3860938)),
        Action(hour: 9, youCanDo: "Visit Al Alam Palace", place: CLLocationCoordinate2D(latitude: 23.6159135, longitude: 58.592124)),
        Action(hour: 10, youCanDo: "Visit Mirani Fortress", place: CLLocationCoordinate2D(latitude: 23.6177973, longitude: 58.589907)),
        Action(hour: 11, youCanDo: "Promenade along Muttrah Souq", place: CLLocationCoordinate2D(latitude: 23.6204067, longitude: 58.5619251))]
    
    func bringAction(hour: Int)  -> Action{
        return schedule.first(where: { $0.hour == hour })!
    }
}
