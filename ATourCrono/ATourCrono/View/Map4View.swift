//
//  Map4View.swift
//  ATourCrono
//
//  Created by Juan Manuel Moreno on 14/10/24.
//

import SwiftUI
import MapKit

struct Map4View: View {
    
    @State private var region = MKCoordinateRegion(
        center: CLLocationCoordinate2D(latitude: 23.5665976, longitude: 58.3843438),
        span: MKCoordinateSpan(latitudeDelta: 0.04, longitudeDelta: 0.05)
    )
    @Binding var action: Action
    @Binding var showDetails: Bool
    
    var body: some View {
        Map(coordinateRegion: $region, annotationItems: [Mark(name: action.youCanDo, coordinate: action.place)]) { mark in
            MapAnnotation(coordinate: mark.coordinate) {
                Image(systemName: "mappin.circle.fill")
                    .font(.largeTitle)
                    .foregroundColor(.red)
                    .onTapGesture {
                        showDetails = true
                    }
            }
        }
        .overlay(
            GeometryReader { geometry in
                ZStack {
                    if self.showDetails {
                        DetailView(showDetails: $showDetails, name: action.youCanDo)
                            .frame(width: 242, height: 500)
                            .background(Color.white)
                            .cornerRadius(10)
                            .shadow(radius: 10)
                            .offset(x: geometry.size.width - 255, y: geometry.size.height - 661)
                    }
                }
            }
        )
    }
}

//#Preview {
//    Map4View()
//}
