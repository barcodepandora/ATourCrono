//
//  ContentView.swift
//  ATourCrono
//
//  Created by Juan Manuel Moreno on 12/10/24.
//

import SwiftUI
import MapKit

struct ContentView: View {
    
//    @State private var region = MKCoordinateRegion(
//        center: CLLocationCoordinate2D(latitude: 23.5665976, longitude: 58.3843438),
//        span: MKCoordinateSpan(latitudeDelta: 0.005, longitudeDelta: 0.005)
//    )
//    @State private var showDetails = false
//    @State private var hour = 7
    
    var body: some View {
        VStack {
        }
//        .padding()
//        ClockView(hour: $hour, closure: { 
////            print("son las \(hour)")
//        })
//        Map(coordinateRegion: $region, annotationItems: [Mark(name: "Marker", coordinate: CLLocationCoordinate2D(latitude: 23.5665976, longitude: 58.3843438))]) { mark in
//            MapAnnotation(coordinate: mark.coordinate) {
//                Image(systemName: "mappin.circle.fill")
//                    .font(.largeTitle)
//                    .foregroundColor(.red)
//                    .onTapGesture {
//                        showDetails = true
//                    }
//            }
//        }
//        .overlay(
//            GeometryReader { geometry in
//                ZStack {
//                    if self.showDetails {
//                        DetailView(showDetails: $showDetails, name: "Marker Details")
//                            .frame(width: 242, height: 500)
//                            .background(Color.white)
//                            .cornerRadius(10)
//                            .shadow(radius: 10)
//                            .offset(x: geometry.size.width - 255, y: geometry.size.height - 661)
//                    }
//                }
//            }
//        )
//        ATourCronoView()
    }
}

struct Mark: Identifiable {
    let id = UUID()
    let name: String
    let coordinate: CLLocationCoordinate2D
}

struct DetailView: View {
    @Binding var showDetails: Bool
    
    @Environment(\.dismiss) private var dismiss
    
    let name: String

    var body: some View {
        VStack {
            Text(name)
                .foregroundColor(.black)
                .font(.largeTitle)
            Text("This is a detail view")
                .font(.body)
            Button("Dismiss") {
                showDetails.toggle()
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
