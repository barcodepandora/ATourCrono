//
//  ClockView.swift
//  ATourCrono
//
//  Created by Juan Manuel Moreno on 12/10/24.
//

import SwiftUI

struct ClockView: View {
    
    @Binding var hour: Int
    @State private var hours = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12]
    let closure: () -> Void
    
    var body: some View {
        ZStack {
            Circle()
                .stroke(Color.cyan, lineWidth: 3)
                .frame(width: 145, height: 145)
            Rectangle()
                .fill(Color.cyan)
                .frame(width: 2, height: 64)
                .rotationEffect(Angle(degrees: MathButler.shared.calculateAngleInDegrees(numberOfAngles: hours.count, numberOfAngle: hour)))
        }
        .gesture(
            DragGesture()
                .onEnded() { value in
                    if value.translation.width > 20 {
                        hour = hour == 1 ? 12: hour - 1
                    } else if value.translation.width < 20 {
                        hour = hour == 12 ? 1: hour + 1
                    }
                    closure()
                }
        )
    }
}

//#Preview {
//    ClockView()
//}
