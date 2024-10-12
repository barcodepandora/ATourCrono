//
//  ClockView.swift
//  ATourCrono
//
//  Created by Juan Manuel Moreno on 12/10/24.
//

import SwiftUI

struct ClockView: View {
    
    @State private var angleNumber = 12
    @State private var hours = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12]
    
    var body: some View {
        ZStack {
            Circle()
                .stroke(Color.cyan, lineWidth: 3)
                .frame(width: 145, height: 145)
            Rectangle()
                .fill(Color.cyan)
                .frame(width: 2, height: 64)
                .rotationEffect(Angle(degrees: MathButler.shared.calculateAngleInDegrees(numberOfAngles: hours.count, numberOfAngle: angleNumber)))
        }
        .gesture(
            DragGesture()
                .onEnded() { value in
                    if value.translation.width > 20 {
                        angleNumber = angleNumber == 1 ? 12: angleNumber - 1
                    } else if value.translation.width < 20 {
                        angleNumber = angleNumber == 12 ? 1: angleNumber + 1
                    }
                }
        )
    }
}

#Preview {
    ClockView()
}
