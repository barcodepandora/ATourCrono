//
//  ATourCronoView.swift
//  ATourCrono
//
//  Created by Juan Manuel Moreno on 14/10/24.
//

import SwiftUI
import MapKit

struct ATourCronoView: View {
    
    @EnvironmentObject private var vm: ATourCronoViewModel
    
    @State var showDetails = false
    @State var action: Action
    @State private var hour = 7

    var body: some View {
        VStack {
            ClockView(hour: $hour, closure: {
                action = vm.bringAction(hour: hour)
            })
            Map4View(action: $action, showDetails: $showDetails)
        }
        .padding()
        .onAppear {
            action = vm.bringAction(hour: 7)
        }
    }
}

//#Preview {
//    ATourCronoView(action: <#Action#>)
//}
